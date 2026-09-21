-- Croatian. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['hr'] = {
    -- Misc
    ['misc.citizen']            = 'Građanin',
    ['misc.yourLocker']         = 'vaš ormarić',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Rodni list',
    ['toast.notReadable']       = 'Ovaj rodni list nije čitljiv.',
    ['toast.nobodyClose']       = 'Nema nikoga dovoljno blizu.',
    ['toast.showed']            = 'Pokazali ste svoj rodni list.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Niste prijavljeni.',
    ['err.alreadyPending']      = 'Već imate narudžbu rodnog lista u tijeku.',
    ['err.cooldown']            = 'Nedavno ste naručili rodni list. Pričekajte %d min. prije nego što naručite novi.',
    ['err.chooseLocker']        = 'Odaberite gdje ćete preuzeti rodni list.',
    ['err.noCharInfo']          = 'Nismo mogli pročitati podatke o vašem liku.',
    ['err.noNumber']            = 'Nismo mogli izraditi broj rodnog lista. Pokušajte ponovno.',
    ['err.noMoney']             = 'Nemate dovoljno novca na bankovnom računu.',
    ['err.orderFailed']         = 'Nismo mogli obraditi vašu narudžbu. Nije vam naplaćeno, pokušajte ponovno.',
    ['err.badRequest']          = 'Neispravan zahtjev.',
    ['err.busy']                = 'Pričekajte, vaš posljednji zahtjev još se obrađuje.',
    ['err.generic']             = 'Nešto je pošlo po zlu. Pokušajte ponovno.',

    -- Emails
    ['mail.received.subject']   = 'Zaprimili smo vašu narudžbu rodnog lista',
    ['mail.received.body']      = 'Pozdrav %s,\n\nzaprimili smo vašu narudžbu rodnog lista i vašu uplatu od %s%d.\n\nPredviđeno vrijeme spremnosti: %s. Poslat ćemo vam e-poštu kada bude poslan.',
    ['mail.sent.subject']       = 'Vaš rodni list je na putu',
    ['mail.sent.body']          = 'Pozdrav %s,\n\nVaš rodni list je poslan. Mjesto preuzimanja: %s. Otvorite Postal Prime za kod za preuzimanje, a zatim rodni list preuzmite iz ormarića.\n\nBroj rodnog lista: %s',
    ['mail.issued.subject']     = 'Vaš rodni list je izdan',
    ['mail.issued.body']        = 'Pozdrav %s,\n\nVaš rodni list je spreman i nalazi se u vašem inventaru.\n\nBroj rodnog lista: %s',

    -- Phone notifications
    ['phone.now']               = 'sada',
    ['phone.sent.title']        = 'Rodni list poslan',
    ['phone.sent.body']         = 'Vaš rodni list je poslan. Mjesto preuzimanja: %s.',
    ['phone.issued.title']      = 'Rodni list izdan',
    ['phone.issued.body']       = 'Vaš rodni list je dodan u vaš inventar.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Rodni list',
    ['item.description']        = 'Rodni list %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Rodni list naručen',
    ['discord.sent']            = 'Rodni list poslan',
    ['discord.issued']          = 'Rodni list izdan',
    ['discord.collected']       = 'Rodni list preuzet',
    ['discord.character']       = 'Lik',
    ['discord.citizenId']       = 'ID građanina',
    ['discord.paid']            = 'Plaćeno',
    ['discord.number']          = 'Broj',
    ['discord.sentTo']          = 'Poslano na',
    ['discord.inventory']       = 'Inventar',

    -- Certificate (NUI)
    ['card.title']              = 'Rodni list',
    ['card.subtitle']           = 'Ovjerena preslika upisa u maticu rođenih',
    ['card.name']               = 'Ime',
    ['card.dob']                = 'Datum rođenja',
    ['card.sex']                = 'Spol',
    ['card.place']              = 'Mjesto rođenja',
    ['card.district']           = 'Područje upisa',
    ['card.number']             = 'Rodni list br.',
    ['card.issued']             = 'Datum izdavanja',
    ['card.issuedBy']           = 'Izdao',
    ['card.warning']            = 'Samo za roleplay. Preslike se izdaju na zahtjev.',
    ['card.male']               = 'Muški',
    ['card.female']             = 'Ženski',
    ['card.shownBy']            = '%s vam pokazuje svoj rodni list',
    ['card.show']               = 'Pokaži osobi u blizini',
    ['card.close']              = 'Zatvori',
    ['card.escHint']            = 'Pritisnite Esc za zatvaranje',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'siječnja,veljače,ožujka,travnja,svibnja,lipnja,srpnja,kolovoza,rujna,listopada,studenoga,prosinca',
}
