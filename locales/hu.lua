-- Hungarian. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['hu'] = {
    -- Misc
    ['misc.citizen']            = 'Állampolgár',
    ['misc.yourLocker']         = 'szekrényed',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Születési anyakönyvi kivonat',
    ['toast.notReadable']       = 'Ez a kivonat nem olvasható.',
    ['toast.nobodyClose']       = 'Nincs senki elég közel.',
    ['toast.showed']            = 'Megmutattad a születési anyakönyvi kivonatodat.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Nem vagy bejelentkezve.',
    ['err.alreadyPending']      = 'Már van folyamatban lévő születési anyakönyvi kivonat rendelésed.',
    ['err.cooldown']            = 'Nemrég rendeltél egy kivonatot. Kérjük, várj %d percet, mielőtt újat rendelsz.',
    ['err.chooseLocker']        = 'Válaszd ki, hol veszed át a kivonatodat.',
    ['err.noCharInfo']          = 'Nem tudtuk beolvasni a karaktered adatait.',
    ['err.noNumber']            = 'Nem sikerült kivonatszámot létrehozni. Kérjük, próbáld újra.',
    ['err.noMoney']             = 'Nincs elég pénzed a bankszámládon.',
    ['err.orderFailed']         = 'Nem tudtuk feldolgozni a rendelésedet. Nem vontunk le pénzt, kérjük, próbáld újra.',
    ['err.badRequest']          = 'Érvénytelen kérés.',
    ['err.busy']                = 'Kérjük, várj, az utolsó kérésed feldolgozása még folyamatban van.',
    ['err.generic']             = 'Valami hiba történt. Kérjük, próbáld újra.',

    -- Emails
    ['mail.received.subject']   = 'Megkaptuk a születési anyakönyvi kivonat rendelésedet',
    ['mail.received.body']      = 'Szia %s,\n\nMegkaptuk a születési anyakönyvi kivonatra leadott rendelésedet és a befizetésedet: %s%d.\n\nVárható elkészülés: %s. E-mailt küldünk, amint elküldtük neked.',
    ['mail.sent.subject']       = 'A születési anyakönyvi kivonatod úton van',
    ['mail.sent.body']          = 'Szia %s,\n\nA születési anyakönyvi kivonatodat elküldtük. Átvételi hely: %s. Nyisd meg a Postal Prime alkalmazást az átvételi kódért, majd vedd át a kivonatot a szekrényből.\n\nKivonat száma: %s',
    ['mail.issued.subject']     = 'A születési anyakönyvi kivonatod kiállításra került',
    ['mail.issued.body']        = 'Szia %s,\n\nA születési anyakönyvi kivonatod elkészült, és a leltáradban van.\n\nKivonat száma: %s',

    -- Phone notifications
    ['phone.now']               = 'most',
    ['phone.sent.title']        = 'Születési anyakönyvi kivonat elküldve',
    ['phone.sent.body']         = 'A születési anyakönyvi kivonatodat elküldtük. Átvételi hely: %s.',
    ['phone.issued.title']      = 'Születési anyakönyvi kivonat kiállítva',
    ['phone.issued.body']       = 'A születési anyakönyvi kivonatod hozzáadva a leltáradhoz.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Születési anyakönyvi kivonat',
    ['item.description']        = 'Születési anyakönyvi kivonat %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Születési anyakönyvi kivonat megrendelve',
    ['discord.sent']            = 'Születési anyakönyvi kivonat elküldve',
    ['discord.issued']          = 'Születési anyakönyvi kivonat kiállítva',
    ['discord.collected']       = 'Születési anyakönyvi kivonat átvéve',
    ['discord.character']       = 'Karakter',
    ['discord.citizenId']       = 'Állampolgár-azonosító',
    ['discord.paid']            = 'Fizetve',
    ['discord.number']          = 'Szám',
    ['discord.sentTo']          = 'Elküldve ide',
    ['discord.inventory']       = 'Leltár',

    -- Certificate (NUI)
    ['card.title']              = 'Születési anyakönyvi kivonat',
    ['card.subtitle']           = 'Hiteles másolat a születési anyakönyv egy bejegyzéséről',
    ['card.name']               = 'Név',
    ['card.dob']                = 'Születési dátum',
    ['card.sex']                = 'Nem',
    ['card.place']              = 'Születési hely',
    ['card.district']           = 'Anyakönyvi kerület',
    ['card.number']             = 'Kivonat sz.',
    ['card.issued']             = 'Kiállítás dátuma',
    ['card.issuedBy']           = 'Kiállította',
    ['card.warning']            = 'Csak szerepjátékhoz. Másolatok kérésre kaphatók.',
    ['card.male']               = 'Férfi',
    ['card.female']             = 'Nő',
    ['card.shownBy']            = '%s megmutatja neked a születési anyakönyvi kivonatát',
    ['card.show']               = 'Mutasd meg a közelben lévőnek',
    ['card.close']              = 'Bezárás',
    ['card.escHint']            = 'A bezáráshoz nyomd meg az Esc gombot',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'január,február,március,április,május,június,július,augusztus,szeptember,október,november,december',
}
