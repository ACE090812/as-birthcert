-- as-birthcert settings. SERVER ONLY (never sent to players), so the webhook is safe here.
Config = {}

Config.framework = 'auto'      -- 'auto', 'qbx', 'qb' or 'esx'
Config.inventory = 'auto'      -- 'auto', 'ox_inventory' or 'qb-inventory'

Config.account  = 'bank'       -- the account orders are paid from
Config.currency = '£'

Config.item = 'birth_certificate'   -- inventory item name (see README for the item definition)

Config.price       = 15        -- fee per certificate
Config.waitSeconds = 1800      -- time before the certificate is sent (30 minutes)

-- What is printed on the certificate.
Config.countryName      = 'San Andreas'
Config.placeOfBirth     = 'Los Santos'                      -- used when the character has no birthplace recorded
Config.registrationDistrict = 'Los Santos'
Config.issuedBy         = 'General Register Office, Los Santos'

-- A character can order as many copies as they like (each is a new item). Only one order can be
-- in progress at a time. Set this to stop people ordering again too soon (seconds, 0 = no limit).
Config.cooldownSeconds = 0

-- Delivery. 'locker' sends the certificate to a Postal Prime locker (needs as-postalprime, with the
-- createParcel export, same as as-passport). 'inventory' puts it straight into the player's inventory,
-- and waits until they are online if they are not.
Config.delivery = {
    mode          = 'locker',
    prepSeconds   = 120,        -- time before the locker parcel is ready
    expireSeconds = 172800,     -- how long it waits in the locker. If nobody collects it, it is sent again
    sender        = 'General Register Office',
}

Config.showDistance = 3.0       -- how close another player must be to be shown the certificate

-- Discord log of every order and delivery. Empty = off.
Config.webhook = ''

Config.mailFrom = { name = 'General Register Office', email = 'noreply@lsgov.co.uk' }
