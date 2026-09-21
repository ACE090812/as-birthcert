# as-birthcert

Birth certificates for the server. A player orders one on **lsgov.co.uk** (the `as-browser` government site), pays from their bank, waits, and the certificate is delivered to a **Postal Prime** locker as an inventory item. The item opens as a certificate of birth and can be shown to the person next to you.

## What it does

- **Fee and wait** (`config.lua`): £15 (`Config.price`), ready in about 30 minutes (`Config.waitSeconds`).
- **Whose certificate**: the player's own character. The name, date of birth and sex are taken from the character when the order is placed. The place of birth uses the character's `birthplace` if the framework stores one, otherwise `Config.placeOfBirth`.
- **Copies**: every order is a new copy with its own 9 digit certificate number. There is no limit (`Config.cooldownSeconds` can add one). Only one order can be in progress at a time. Ordering does not cancel earlier copies.
- **Delivery**: sent to the Postal Prime locker the player picked, with an email and a phone notification. If nobody collects it within `Config.delivery.expireSeconds` it is sent again. Without `as-postalprime` (or with `Config.delivery.mode = 'inventory'`) it goes straight into the inventory and waits if the player is offline.
- **Certificate view**: using the item opens the certificate. "Show to person nearby" shows it to the nearest player within 3 metres (`Config.showDistance`). It can only be opened or shown by someone carrying an item with that number.
- **Discord log** of orders, deliveries and collections (`Config.webhook`).

## Requirements

- `ox_lib`, `oxmysql`, `sd-phone`
- `as-browser` (the government site has the order pages)
- `as-postalprime` **with the `createParcel` edit** already made for `as-passport` (see the as-passport README)
- Framework: qbx_core, qb-core or es_extended. Inventory: ox_inventory or qb-inventory. Both are detected automatically.

## Install

1. Put the `as-birthcert` folder in your resources (for example `[phone]`).
2. Add the item definition for your inventory (files in `install/`) and copy `install/birth_certificate.png` into the inventory's images folder.
   - ox_inventory: `install/ox_inventory_item.lua` (the important line is `client = { event = 'as-birthcert:client:useItem' }`).
   - qb-inventory: `install/qb_inventory_item.lua`.
3. Start order in `server.cfg`:

   ```
   ensure as-postalprime
   ensure as-browser
   ensure as-birthcert
   ```

4. `refresh`, restart `as-browser`, then start `as-birthcert`. The `as_birth_certs` table is created automatically.

The service on lsgov.co.uk (id `birth-certificate`) is live. If `as-birthcert` is not running the page says it is not available.

## Exports

```lua
exports['as-birthcert']:hasCertificate(source_or_citizenid)   -- true if any copy has been issued
exports['as-birthcert']:getByNumber('482913776')              -- { number, first, last, dob, sex, placeOfBirth, issuedAt, ... } or nil
```

`getState(source)` and `order(source, { lockerId })` are used by the government site.

## Languages

Every text the script shows (toasts, emails, phone notifications, the Discord log titles and the certificate labels) lives in `locales/`. English is `locales/en.lua`.

- **Switch language**: set `Config.locale = 'de'` (any file name in `locales/`, without `.lua`) in `config.lua`, then restart the resource. `config.lua` is server only, so the client asks the server which language to use.
- **Add a language**: copy `locales/en.lua` to `locales/<code>.lua`, change `Locales['en']` to `Locales['<code>']`, translate the values only (keep the keys and the `%s` / `%d` placeholders in the same order), then set `Config.locale = '<code>'`. The file is loaded automatically by the `locales/*.lua` line in `fxmanifest.lua`.
- **Missing keys** fall back to English, so a partial translation is fine.
- **Not in the locale files**: text you edit yourself in `config.lua` stays there: `Config.mailFrom`, `Config.delivery.sender`, `Config.countryName`, `Config.placeOfBirth`, `Config.registrationDistrict` and `Config.issuedBy`. Change those directly. Dates saved by the server (`%d %b %Y`) use the server's own date format. Console and log lines for the admin stay in English.
