-- Dutch. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['nl'] = {
    -- Misc
    ['misc.citizen']            = 'Burger',
    ['misc.yourLocker']         = 'je kluisje',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Geboorteakte',
    ['toast.notReadable']       = 'Deze akte is niet leesbaar.',
    ['toast.nobodyClose']       = 'Er is niemand dichtbij genoeg.',
    ['toast.showed']            = 'Je hebt je geboorteakte laten zien.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Je bent niet ingelogd.',
    ['err.alreadyPending']      = 'Je hebt al een bestelling voor een geboorteakte in behandeling.',
    ['err.cooldown']            = 'Je hebt onlangs een akte besteld. Wacht %d minuut/minuten voordat je er nog een bestelt.',
    ['err.chooseLocker']        = 'Kies waar je je akte wilt ophalen.',
    ['err.noCharInfo']          = 'We konden je karaktergegevens niet lezen.',
    ['err.noNumber']            = 'We konden geen aktenummer aanmaken. Probeer het opnieuw.',
    ['err.noMoney']             = 'Je hebt niet genoeg geld op je bankrekening.',
    ['err.orderFailed']         = 'We konden je bestelling niet verwerken. Er is niets afgeschreven, probeer het opnieuw.',
    ['err.badRequest']          = 'Ongeldig verzoek.',
    ['err.busy']                = 'Even geduld, je laatste verzoek wordt nog verwerkt.',
    ['err.generic']             = 'Er is iets misgegaan. Probeer het opnieuw.',

    -- Emails
    ['mail.received.subject']   = 'We hebben je bestelling van een geboorteakte ontvangen',
    ['mail.received.body']      = 'Hallo %s,\n\nWe hebben je bestelling voor een geboorteakte en je betaling van %s%d ontvangen.\n\nVerwachte klaartijd: %s. We sturen je een e-mail zodra de akte naar je is verzonden.',
    ['mail.sent.subject']       = 'Je geboorteakte is onderweg',
    ['mail.sent.body']          = 'Hallo %s,\n\nJe geboorteakte is verzonden naar %s. Open Postal Prime voor je ophaalcode en haal de akte daarna op bij de kluis.\n\nAktenummer: %s',
    ['mail.issued.subject']     = 'Je geboorteakte is afgegeven',
    ['mail.issued.body']        = 'Hallo %s,\n\nJe geboorteakte is klaar en zit in je inventaris.\n\nAktenummer: %s',

    -- Phone notifications
    ['phone.now']               = 'nu',
    ['phone.sent.title']        = 'Geboorteakte verzonden',
    ['phone.sent.body']         = 'Je geboorteakte is verzonden naar %s.',
    ['phone.issued.title']      = 'Geboorteakte afgegeven',
    ['phone.issued.body']       = 'Je geboorteakte is aan je inventaris toegevoegd.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Geboorteakte',
    ['item.description']        = 'Geboorteakte %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Geboorteakte besteld',
    ['discord.sent']            = 'Geboorteakte verzonden',
    ['discord.issued']          = 'Geboorteakte afgegeven',
    ['discord.collected']       = 'Geboorteakte opgehaald',
    ['discord.character']       = 'Personage',
    ['discord.citizenId']       = 'Burger-ID',
    ['discord.paid']            = 'Betaald',
    ['discord.number']          = 'Nummer',
    ['discord.sentTo']          = 'Verzonden naar',
    ['discord.inventory']       = 'Inventaris',

    -- Certificate (NUI)
    ['card.title']              = 'Geboorteakte',
    ['card.subtitle']           = 'Gewaarmerkt afschrift van een inschrijving in het geboorteregister',
    ['card.name']               = 'Naam',
    ['card.dob']                = 'Geboortedatum',
    ['card.sex']                = 'Geslacht',
    ['card.place']              = 'Geboorteplaats',
    ['card.district']           = 'Registratiedistrict',
    ['card.number']             = 'Aktenr.',
    ['card.issued']             = 'Datum van afgifte',
    ['card.issuedBy']           = 'Afgegeven door',
    ['card.warning']            = 'Alleen voor roleplay. Afschriften worden op verzoek afgegeven.',
    ['card.male']               = 'Man',
    ['card.female']             = 'Vrouw',
    ['card.shownBy']            = '%s laat je de geboorteakte zien',
    ['card.show']               = 'Toon aan iemand in de buurt',
    ['card.close']              = 'Sluiten',
    ['card.escHint']            = 'Druk op Esc om te sluiten',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'januari,februari,maart,april,mei,juni,juli,augustus,september,oktober,november,december',
}
