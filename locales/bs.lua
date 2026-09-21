-- Bosnian. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['bs'] = {
    -- Misc
    ['misc.citizen']            = 'Građanin',
    ['misc.yourLocker']         = 'vaš ormarić',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Izvod iz matične knjige rođenih',
    ['toast.notReadable']       = 'Ovaj izvod nije čitljiv.',
    ['toast.nobodyClose']       = 'Nema nikoga dovoljno blizu.',
    ['toast.showed']            = 'Pokazali ste svoj izvod iz matične knjige rođenih.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Niste prijavljeni.',
    ['err.alreadyPending']      = 'Već imate narudžbu izvoda u toku.',
    ['err.cooldown']            = 'Nedavno ste naručili izvod. Pričekajte %d min. prije nego što naručite novi.',
    ['err.chooseLocker']        = 'Odaberite gdje ćete preuzeti izvod.',
    ['err.noCharInfo']          = 'Nismo mogli pročitati podatke o vašem liku.',
    ['err.noNumber']            = 'Nismo mogli kreirati broj izvoda. Pokušajte ponovo.',
    ['err.noMoney']             = 'Nemate dovoljno novca na bankovnom računu.',
    ['err.orderFailed']         = 'Nismo mogli obraditi vašu narudžbu. Nije vam naplaćeno, pokušajte ponovo.',
    ['err.badRequest']          = 'Neispravan zahtjev.',
    ['err.busy']                = 'Sačekajte, vaš posljednji zahtjev se još obrađuje.',
    ['err.generic']             = 'Nešto je pošlo po zlu. Pokušajte ponovo.',

    -- Emails
    ['mail.received.subject']   = 'Primili smo vašu narudžbu izvoda iz matične knjige rođenih',
    ['mail.received.body']      = 'Zdravo %s,\n\nPrimili smo vašu narudžbu izvoda iz matične knjige rođenih i vašu uplatu od %s%d.\n\nPredviđeno vrijeme spremnosti: %s. Poslat ćemo vam e-mail kada bude poslan.',
    ['mail.sent.subject']       = 'Vaš izvod iz matične knjige rođenih je na putu',
    ['mail.sent.body']          = 'Zdravo %s,\n\nVaš izvod iz matične knjige rođenih je poslan. Mjesto preuzimanja: %s. Otvorite Postal Prime za kod za preuzimanje, a zatim izvod preuzmite iz ormarića.\n\nBroj izvoda: %s',
    ['mail.issued.subject']     = 'Vaš izvod iz matične knjige rođenih je izdat',
    ['mail.issued.body']        = 'Zdravo %s,\n\nVaš izvod iz matične knjige rođenih je spreman i nalazi se u vašem inventaru.\n\nBroj izvoda: %s',

    -- Phone notifications
    ['phone.now']               = 'sada',
    ['phone.sent.title']        = 'Izvod iz matične knjige rođenih poslan',
    ['phone.sent.body']         = 'Vaš izvod iz matične knjige rođenih je poslan. Mjesto preuzimanja: %s.',
    ['phone.issued.title']      = 'Izvod iz matične knjige rođenih izdat',
    ['phone.issued.body']       = 'Vaš izvod iz matične knjige rođenih je dodan u vaš inventar.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Izvod iz matične knjige rođenih',
    ['item.description']        = 'Izvod iz matične knjige rođenih %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Izvod iz matične knjige rođenih naručen',
    ['discord.sent']            = 'Izvod iz matične knjige rođenih poslan',
    ['discord.issued']          = 'Izvod iz matične knjige rođenih izdat',
    ['discord.collected']       = 'Izvod iz matične knjige rođenih preuzet',
    ['discord.character']       = 'Lik',
    ['discord.citizenId']       = 'ID građanina',
    ['discord.paid']            = 'Plaćeno',
    ['discord.number']          = 'Broj',
    ['discord.sentTo']          = 'Poslano na',
    ['discord.inventory']       = 'Inventar',

    -- Certificate (NUI)
    ['card.title']              = 'Izvod iz matične knjige rođenih',
    ['card.subtitle']           = 'Ovjerena kopija upisa u matičnu knjigu rođenih',
    ['card.name']               = 'Ime',
    ['card.dob']                = 'Datum rođenja',
    ['card.sex']                = 'Spol',
    ['card.place']              = 'Mjesto rođenja',
    ['card.district']           = 'Matično područje',
    ['card.number']             = 'Izvod br.',
    ['card.issued']             = 'Datum izdavanja',
    ['card.issuedBy']           = 'Izdao',
    ['card.warning']            = 'Samo za roleplay. Kopije se izdaju na zahtjev.',
    ['card.male']               = 'Muški',
    ['card.female']             = 'Ženski',
    ['card.shownBy']            = '%s vam pokazuje svoj izvod iz matične knjige rođenih',
    ['card.show']               = 'Pokaži osobi u blizini',
    ['card.close']              = 'Zatvori',
    ['card.escHint']            = 'Pritisnite Esc za zatvaranje',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'januar,februar,mart,april,maj,juni,juli,august,septembar,oktobar,novembar,decembar',
}
