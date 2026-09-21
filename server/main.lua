-- as-birthcert server: orders, delivery, exports and the certificate card.
--
-- An order goes: processing (paid, waiting) -> issued (handed to Postal Prime or the inventory).
-- The physical item is created when the player collects it. Every order is a new copy; the details
-- printed on it are the character's own (name, date of birth) taken when the order is placed.

local function now() return os.time() end
local function log(fmt, ...) print(('^5[as-birthcert]^0 ' .. fmt):format(...)) end

-- ---------------------------------------------------------------------------------------------
-- Database
-- ---------------------------------------------------------------------------------------------

MySQL.ready(function()
    MySQL.query([[CREATE TABLE IF NOT EXISTS as_birth_certs (
        id INT AUTO_INCREMENT PRIMARY KEY,
        number VARCHAR(12) NOT NULL,
        citizenid VARCHAR(64) NOT NULL,
        first_name VARCHAR(60) NOT NULL,
        last_name VARCHAR(60) NOT NULL,
        dob VARCHAR(20) NOT NULL DEFAULT '',
        sex CHAR(1) NOT NULL DEFAULT 'X',
        place_of_birth VARCHAR(80) NOT NULL DEFAULT '',
        status VARCHAR(16) NOT NULL,
        locker_id VARCHAR(64) NULL,
        ordered_at INT NOT NULL,
        ready_at INT NOT NULL,
        issued_at INT NULL,
        collected TINYINT NOT NULL DEFAULT 0,
        UNIQUE KEY uq_number (number),
        KEY idx_owner (citizenid, status),
        KEY idx_ready (status, ready_at)
    )]])
end)

-- ---------------------------------------------------------------------------------------------
-- Records
-- ---------------------------------------------------------------------------------------------

local function toCard(row)
    return {
        number = row.number, first = row.first_name, last = row.last_name, dob = row.dob, sex = row.sex,
        placeOfBirth = row.place_of_birth, issuedAt = row.issued_at,
        district = Config.registrationDistrict, issuedBy = Config.issuedBy, countryName = Config.countryName,
    }
end

local function byNumber(number)
    if type(number) ~= 'string' or not number:match('^%d+$') or #number > 12 then return nil end
    return MySQL.single.await('SELECT * FROM as_birth_certs WHERE number = ?', { number })
end

local function pendingRow(cid)
    return MySQL.single.await(
        "SELECT * FROM as_birth_certs WHERE citizenid = ? AND status = 'processing' ORDER BY id DESC LIMIT 1", { cid })
end

local function latestIssued(cid)
    return MySQL.single.await(
        "SELECT * FROM as_birth_certs WHERE citizenid = ? AND status = 'issued' ORDER BY id DESC LIMIT 1", { cid })
end

local function lastOrderTime(cid)
    return tonumber(MySQL.scalar.await('SELECT MAX(ordered_at) FROM as_birth_certs WHERE citizenid = ?', { cid })) or 0
end

local function newNumber()
    for _ = 1, 20 do
        local n = tostring(math.random(100000000, 999999999))
        if not MySQL.scalar.await('SELECT 1 FROM as_birth_certs WHERE number = ?', { n }) then return n end
    end
    return nil
end

local function itemMetadata(row)
    return {
        number = row.number,
        holder = ('%s %s'):format(row.first_name, row.last_name),
        dob = row.dob,
        description = T('item.description', row.number, row.first_name, row.last_name),
    }
end

-- ---------------------------------------------------------------------------------------------
-- Discord log
-- ---------------------------------------------------------------------------------------------

local function discordLog(title, color, fields)
    if type(Config.webhook) ~= 'string' or not Config.webhook:find('^https://') then return end
    local out = {}
    for _, f in ipairs(fields) do
        out[#out + 1] = { name = f[1], value = tostring(f[2]):gsub('@', '@\226\128\139'):sub(1, 200), inline = true }
    end
    PerformHttpRequest(Config.webhook, function() end, 'POST', json.encode({
        embeds = { { title = title, color = color, fields = out, timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ'), footer = { text = 'as-birthcert' } } },
        allowed_mentions = { parse = {} },
    }), { ['Content-Type'] = 'application/json' })
end

-- ---------------------------------------------------------------------------------------------
-- Postal Prime
-- ---------------------------------------------------------------------------------------------

local function postalReady()
    return GetResourceState('as-postalprime') == 'started'
end

local function lockers()
    if not postalReady() then return {} end
    local ok, list = pcall(function() return exports['as-postalprime']:getLockers() end)
    return ok and type(list) == 'table' and list or {}
end

local function lockerLabel(id)
    for _, l in ipairs(lockers()) do if l.id == id then return l.label end end
    return nil
end

local warnedLockers = false
local function deliveryMode()
    if Config.delivery.mode == 'locker' and postalReady() then
        if #lockers() > 0 then return 'locker' end
        if not warnedLockers then
            warnedLockers = true
            log('as-postalprime returned no lockers. Restart as-postalprime (it needs the createParcel edit). Certificates go to the inventory until then.')
        end
    end
    return 'inventory'
end

-- ---------------------------------------------------------------------------------------------
-- State
-- ---------------------------------------------------------------------------------------------

--- Returns nil when the character may order, or a reason.
local function refusal(cid, pending)
    if pending then return T('err.alreadyPending') end
    local cd = tonumber(Config.cooldownSeconds) or 0
    if cd > 0 then
        local wait = lastOrderTime(cid) + cd - now()
        if wait > 0 then
            return T('err.cooldown', math.ceil(wait / 60))
        end
    end
    return nil
end

local function getState(src)
    local cid = Bridge.getIdentifier(src)
    if not cid then return nil, T('err.notSignedIn') end
    local pending = pendingRow(cid)
    local why = refusal(cid, pending)
    local info = Bridge.getCharInfo(src)
    local mode = deliveryMode()

    local state = {
        currency = Config.currency, price = Config.price, waitSeconds = Config.waitSeconds, now = now(),
        mode = mode, lockers = mode == 'locker' and lockers() or {},
        allowed = why == nil, reason = why,
        person = { first = info.first, last = info.last, dob = info.dob },
        copies = tonumber(MySQL.scalar.await("SELECT COUNT(*) FROM as_birth_certs WHERE citizenid = ? AND status = 'issued'", { cid })) or 0,
    }
    local last = latestIssued(cid)
    if last then state.latest = { number = last.number, issuedAt = last.issued_at } end
    if pending then
        state.application = {
            readyAt = pending.ready_at, orderedAt = pending.ordered_at, number = pending.number,
            lockerLabel = pending.locker_id and pending.locker_id ~= '' and lockerLabel(pending.locker_id) or nil,
            late = pending.ready_at <= now(),
        }
    end
    return state
end

-- ---------------------------------------------------------------------------------------------
-- Ordering
-- ---------------------------------------------------------------------------------------------

local busy = {}

local function order(src, data)
    local cid = Bridge.getIdentifier(src)
    if not cid then return nil, T('err.notSignedIn') end

    local why = refusal(cid, pendingRow(cid))
    if why then return nil, why end

    local mode = deliveryMode()
    local lockerId
    if mode == 'locker' then
        lockerId = tostring(data.lockerId or '')
        if not lockerLabel(lockerId) then return nil, T('err.chooseLocker') end
    end

    local info = Bridge.getCharInfo(src)
    if (info.first or '') == '' then return nil, T('err.noCharInfo') end

    local number = newNumber()
    if not number then return nil, T('err.noNumber') end

    if not Bridge.removeMoney(src, Config.account, Config.price, 'birth-certificate') then
        return nil, T('err.noMoney')
    end

    local ordered = now()
    local place = (info.birthplace and info.birthplace ~= '') and info.birthplace or Config.placeOfBirth
    local ok, id = pcall(function()
        return MySQL.insert.await(
            "INSERT INTO as_birth_certs (number, citizenid, first_name, last_name, dob, sex, place_of_birth, status, locker_id, ordered_at, ready_at) VALUES (?, ?, ?, ?, ?, ?, ?, 'processing', ?, ?, ?)",
            { number, cid, info.first, info.last or '', info.dob or '', info.sex or 'X', place, lockerId or '',
              ordered, ordered + (Config.waitSeconds or 0) })
    end)
    if not ok or not id then
        Bridge.addMoney(src, Config.account, Config.price, 'birth-certificate-refund')
        return nil, T('err.orderFailed')
    end

    pcall(function()
        exports['sd-phone']:addBankTransaction(cid, {
            label = T('item.label'), amount = -Config.price, category = 'government', counterparty = Config.issuedBy,
        })
    end)
    local name = Bridge.getCharacterName(src)
    Bridge.sendPhoneMail(src, cid, Config.mailFrom, T('mail.received.subject'),
        T('mail.received.body', name, Config.currency, Config.price, os.date('%d %b %Y %H:%M', ordered + (Config.waitSeconds or 0))))
    discordLog(T('discord.ordered'), 0x2563eb, {
        { T('discord.character'), name }, { T('discord.citizenId'), cid }, { T('discord.paid'), Config.currency .. Config.price }, { T('discord.number'), number },
    })

    return { price = Config.price, readyAt = ordered + (Config.waitSeconds or 0), now = ordered, number = number }
end

-- ---------------------------------------------------------------------------------------------
-- Handing it over
-- ---------------------------------------------------------------------------------------------

local function markIssued(row, delivered)
    local t = now()
    MySQL.update.await("UPDATE as_birth_certs SET status = 'issued', issued_at = ?, collected = ? WHERE id = ?",
        { t, delivered and 1 or 0, row.id })
    row.status, row.issued_at = 'issued', t
end

local function deliver(row)
    local mode = deliveryMode()
    local cid = row.citizenid
    local name = ('%s %s'):format(row.first_name, row.last_name)

    if mode == 'locker' then
        local lockerId = row.locker_id ~= '' and row.locker_id or (lockers()[1] or {}).id
        if not lockerId then log('no locker to deliver certificate %s to', row.number); return false end
        local ok, sent, err = pcall(function()
            return exports['as-postalprime']:createParcel(cid, {
                ref = row.number, sender = Config.delivery.sender, lockerId = lockerId,
                prepSeconds = Config.delivery.prepSeconds, expireSeconds = Config.delivery.expireSeconds,
                items = { { item = Config.item, label = T('item.label'), icon = '📜', qty = 1, metadata = itemMetadata(row) } },
            })
        end)
        if not ok then log('createParcel failed: %s', tostring(sent)); return false end
        if not sent then
            if err ~= 'busy' then log('could not send certificate %s to a locker: %s', row.number, tostring(err)) end
            return false
        end
        markIssued(row, false)
        local label = lockerLabel(lockerId) or T('misc.yourLocker')
        local src = Bridge.findSource(cid)
        Bridge.phoneNotify(src, T('phone.sent.title'), T('phone.sent.body', label))
        Bridge.sendPhoneMail(src, cid, Config.mailFrom, T('mail.sent.subject'),
            T('mail.sent.body', name, label, row.number))
        discordLog(T('discord.sent'), 0x16a34a, { { T('discord.number'), row.number }, { T('discord.character'), name }, { T('discord.citizenId'), cid }, { T('discord.sentTo'), label } })
        return true
    end

    local src = Bridge.findSource(cid)
    if not src then return false end
    if not Bridge.addItem(src, Config.item, 1, itemMetadata(row)) then
        log('could not add the certificate item for %s (is the item defined? see README)', cid)
        return false
    end
    markIssued(row, true)
    Bridge.phoneNotify(src, T('phone.issued.title'), T('phone.issued.body'))
    Bridge.sendPhoneMail(src, cid, Config.mailFrom, T('mail.issued.subject'),
        T('mail.issued.body', name, row.number))
    discordLog(T('discord.issued'), 0x16a34a, { { T('discord.number'), row.number }, { T('discord.character'), name }, { T('discord.citizenId'), cid }, { T('discord.sentTo'), T('discord.inventory') } })
    return true
end

CreateThread(function()
    Wait(5000)
    while true do
        local rows = MySQL.query.await(
            "SELECT * FROM as_birth_certs WHERE status = 'processing' AND ready_at <= ? ORDER BY ready_at LIMIT 20", { now() }) or {}
        for i = 1, #rows do
            local ok, err = pcall(deliver, rows[i])
            if not ok then log('delivery failed: %s', tostring(err)) end
        end
        Wait(15000)
    end
end)

AddEventHandler('as-postalprime:parcelCollected', function(cid, ref)
    local row = byNumber(tostring(ref or ''))
    if not row or row.citizenid ~= cid then return end
    MySQL.update.await('UPDATE as_birth_certs SET collected = 1 WHERE id = ?', { row.id })
    discordLog(T('discord.collected'), 0x0ea5e9, { { T('discord.number'), row.number }, { T('discord.citizenId'), cid } })
end)

AddEventHandler('as-postalprime:parcelExpired', function(cid, ref)
    local row = byNumber(tostring(ref or ''))
    if not row or row.citizenid ~= cid or row.status ~= 'issued' then return end
    MySQL.update.await("UPDATE as_birth_certs SET status = 'processing', ready_at = ? WHERE id = ?", { now(), row.id })
    log('certificate %s was not collected in time, sending it again', row.number)
end)

-- ---------------------------------------------------------------------------------------------
-- The certificate card
-- ---------------------------------------------------------------------------------------------

local cardBuckets = {}
local function cardAllowed(src)
    local t = GetGameTimer()
    local b = cardBuckets[src]
    if not b or t - b.start > 10000 then b = { start = t, n = 0 }; cardBuckets[src] = b end
    b.n = b.n + 1
    return b.n <= 10
end
AddEventHandler('playerDropped', function() cardBuckets[source] = nil; busy[source] = nil end)

lib.callback.register('as-birthcert:card', function(src, number)
    if not cardAllowed(src) then return nil end
    number = tostring(number or '')
    if not Bridge.holdsCertificate(src, number) then return nil end
    local row = byNumber(number)
    return row and toCard(row) or nil
end)

RegisterNetEvent('as-birthcert:server:show', function(number)
    local src = source
    if not cardAllowed(src) then return end
    number = tostring(number or '')
    if not Bridge.holdsCertificate(src, number) then return end
    local row = byNumber(number)
    if not row then return end

    local ped = GetPlayerPed(src)
    if not ped or ped == 0 then return end
    local here = GetEntityCoords(ped)
    local best, bestDist
    for _, id in ipairs(GetPlayers()) do
        local other = tonumber(id)
        if other and other ~= src then
            local p = GetPlayerPed(other)
            if p and p ~= 0 then
                local d = #(GetEntityCoords(p) - here)
                if d <= (Config.showDistance or 3.0) and (not bestDist or d < bestDist) then best, bestDist = other, d end
            end
        end
    end
    if not best then
        TriggerClientEvent('ox_lib:notify', src, { title = T('toast.title'), description = T('toast.nobodyClose'), type = 'error' })
        return
    end
    TriggerClientEvent('as-birthcert:client:showCard', best, toCard(row), Bridge.getCharacterName(src))
    TriggerClientEvent('ox_lib:notify', src, { title = T('toast.title'), description = T('toast.showed'), type = 'success' })
end)

-- config.lua is server only, so the client asks which language to use.
lib.callback.register('as-birthcert:locale', function()
    return Config.locale or 'en'
end)

Bridge.registerUsable(Config.item, function(source, item)
    TriggerClientEvent('as-birthcert:client:useItem', source, item)
end)

-- ---------------------------------------------------------------------------------------------
-- Exports
-- ---------------------------------------------------------------------------------------------

--- For the gov site: what the player can do and what they hold.
exports('getState', getState)

--- For the gov site: order a certificate. data = { lockerId = '...' }. Returns a result or nil, message.
exports('order', function(src, data)
    if type(src) ~= 'number' or type(data) ~= 'table' then return nil, T('err.badRequest') end
    if busy[src] then return nil, T('err.busy') end
    busy[src] = true
    local ok, res, err = pcall(order, src, data)
    busy[src] = nil
    if not ok then log('order failed: %s', tostring(res)); return nil, T('err.generic') end
    return res, err
end)

--- Look a certificate up by its number, for police or MDT scripts.
exports('getByNumber', function(number)
    local row = byNumber(tostring(number or ''))
    if not row or row.status ~= 'issued' then return nil end
    return toCard(row)
end)

--- Whether a character has ever been issued a birth certificate. Accepts a server id or a citizen id.
exports('hasCertificate', function(who)
    local cid = type(who) == 'number' and Bridge.getIdentifier(who) or who
    if type(cid) ~= 'string' then return false end
    return latestIssued(cid) ~= nil
end)

CreateThread(function()
    Wait(2000)
    log('framework: %s | inventory: %s | delivery: %s', Bridge.framework, Bridge.inventory, deliveryMode())
end)
