-- as-birthcert client: opens the certificate when the item is used, and shows a certificate that
-- another player has held up to you.

local isOpen = false

local function close()
    if not isOpen then return end
    isOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'close' })
end

local function openCard(card, opts)
    if type(card) ~= 'table' then return end
    isOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'open', card = card, own = opts.own == true, from = opts.from })
end

--- ox_inventory passes the item as the first argument (metadata), qb-inventory passes it with .info.
local function numberFrom(item)
    if type(item) ~= 'table' then return nil end
    local meta = item.metadata or item.info
    if type(meta) == 'table' and meta.number then return tostring(meta.number) end
    if item.number then return tostring(item.number) end
    return nil
end

RegisterNetEvent('as-birthcert:client:useItem', function(item)
    if isOpen then return end
    local number = numberFrom(item)
    if not number then
        lib.notify({ title = 'Birth certificate', description = 'This certificate is not readable.', type = 'error' })
        return
    end
    local card = lib.callback.await('as-birthcert:card', false, number)
    if not card then
        lib.notify({ title = 'Birth certificate', description = 'This certificate is not readable.', type = 'error' })
        return
    end
    openCard(card, { own = true })
end)

RegisterNetEvent('as-birthcert:client:showCard', function(card, fromName)
    if isOpen then close() end
    openCard(card, { own = false, from = fromName })
end)

RegisterNUICallback('close', function(_, cb)
    close()
    cb('ok')
end)

RegisterNUICallback('showNearby', function(data, cb)
    if type(data) == 'table' and data.number then
        TriggerServerEvent('as-birthcert:server:show', tostring(data.number))
    end
    cb('ok')
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() and isOpen then SetNuiFocus(false, false) end
end)

CreateThread(function()
    while true do
        Wait(isOpen and 500 or 2000)
        if isOpen and IsEntityDead(PlayerPedId()) then close() end
    end
end)
