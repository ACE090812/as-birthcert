-- Add this to ox_inventory/data/items.lua, and put birth_certificate.png in ox_inventory/web/images/.
['birth_certificate'] = {
    label = 'Birth certificate',
    weight = 20,
    stack = false,          -- every certificate is its own item with its own number
    close = true,
    description = 'A birth certificate. Use it to read it, or show it to the person next to you.',
    client = { event = 'as-birthcert:client:useItem' },
},
