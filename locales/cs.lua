-- Czech. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['cs'] = {
    -- Misc
    ['misc.citizen']            = 'Občan',
    ['misc.yourLocker']         = 'vaše schránka',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Rodný list',
    ['toast.notReadable']       = 'Tento rodný list nelze přečíst.',
    ['toast.nobodyClose']       = 'Nikdo není dostatečně blízko.',
    ['toast.showed']            = 'Ukázali jste svůj rodný list.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Nejste přihlášeni.',
    ['err.alreadyPending']      = 'Objednávka rodného listu již probíhá.',
    ['err.cooldown']            = 'Nedávno jste si objednali rodný list. Počkejte prosím %d min., než si objednáte další.',
    ['err.chooseLocker']        = 'Vyberte, kde si rodný list vyzvednete.',
    ['err.noCharInfo']          = 'Nepodařilo se načíst údaje vaší postavy.',
    ['err.noNumber']            = 'Nepodařilo se vytvořit číslo rodného listu. Zkuste to prosím znovu.',
    ['err.noMoney']             = 'Na bankovním účtu nemáte dostatek peněz.',
    ['err.orderFailed']         = 'Vaši objednávku se nepodařilo zpracovat. Nebyla vám strhnuta žádná částka, zkuste to prosím znovu.',
    ['err.badRequest']          = 'Neplatný požadavek.',
    ['err.busy']                = 'Počkejte prosím, váš poslední požadavek se stále zpracovává.',
    ['err.generic']             = 'Něco se pokazilo. Zkuste to prosím znovu.',

    -- Emails
    ['mail.received.subject']   = 'Obdrželi jsme vaši objednávku rodného listu',
    ['mail.received.body']      = 'Dobrý den, %s,\n\nobdrželi jsme vaši objednávku rodného listu a vaši platbu ve výši %s%d.\n\nPředpokládaný čas dokončení: %s. Jakmile bude rodný list odeslán, pošleme vám e-mail.',
    ['mail.sent.subject']       = 'Váš rodný list je na cestě',
    ['mail.sent.body']          = 'Dobrý den, %s,\n\nváš rodný list byl odeslán. Místo vyzvednutí: %s. Otevřete Postal Prime pro kód k vyzvednutí a poté si rodný list vyzvedněte ze schránky.\n\nČíslo rodného listu: %s',
    ['mail.issued.subject']     = 'Váš rodný list byl vydán',
    ['mail.issued.body']        = 'Dobrý den, %s,\n\nváš rodný list je připraven a nachází se ve vašem inventáři.\n\nČíslo rodného listu: %s',

    -- Phone notifications
    ['phone.now']               = 'nyní',
    ['phone.sent.title']        = 'Rodný list odeslán',
    ['phone.sent.body']         = 'Váš rodný list byl odeslán. Místo vyzvednutí: %s.',
    ['phone.issued.title']      = 'Rodný list vydán',
    ['phone.issued.body']       = 'Váš rodný list byl přidán do vašeho inventáře.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Rodný list',
    ['item.description']        = 'Rodný list %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Rodný list objednán',
    ['discord.sent']            = 'Rodný list odeslán',
    ['discord.issued']          = 'Rodný list vydán',
    ['discord.collected']       = 'Rodný list vyzvednut',
    ['discord.character']       = 'Postava',
    ['discord.citizenId']       = 'ID občana',
    ['discord.paid']            = 'Zaplaceno',
    ['discord.number']          = 'Číslo',
    ['discord.sentTo']          = 'Odesláno do',
    ['discord.inventory']       = 'Inventář',

    -- Certificate (NUI)
    ['card.title']              = 'Rodný list',
    ['card.subtitle']           = 'Ověřená kopie zápisu v matrice narození',
    ['card.name']               = 'Jméno',
    ['card.dob']                = 'Datum narození',
    ['card.sex']                = 'Pohlaví',
    ['card.place']              = 'Místo narození',
    ['card.district']           = 'Matriční obvod',
    ['card.number']             = 'Rodný list č.',
    ['card.issued']             = 'Datum vydání',
    ['card.issuedBy']           = 'Vydal',
    ['card.warning']            = 'Pouze pro roleplay. Kopie se vydávají na vyžádání.',
    ['card.male']               = 'Muž',
    ['card.female']             = 'Žena',
    ['card.shownBy']            = '%s vám ukazuje svůj rodný list',
    ['card.show']               = 'Ukázat osobě poblíž',
    ['card.close']              = 'Zavřít',
    ['card.escHint']            = 'Zavřete stisknutím Esc',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'ledna,února,března,dubna,května,června,července,srpna,září,října,listopadu,prosince',
}
