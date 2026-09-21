-- German. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['de'] = {
    -- Misc
    ['misc.citizen']            = 'Bürger',
    ['misc.yourLocker']         = 'dein Schließfach',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Geburtsurkunde',
    ['toast.notReadable']       = 'Diese Urkunde ist nicht lesbar.',
    ['toast.nobodyClose']       = 'Es ist niemand nah genug.',
    ['toast.showed']            = 'Du hast deine Geburtsurkunde gezeigt.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Du bist nicht angemeldet.',
    ['err.alreadyPending']      = 'Du hast bereits eine Bestellung für eine Geburtsurkunde in Bearbeitung.',
    ['err.cooldown']            = 'Du hast kürzlich eine Urkunde bestellt. Bitte warte %d Minute(n), bevor du eine weitere bestellst.',
    ['err.chooseLocker']        = 'Wähle aus, wo du deine Urkunde abholen möchtest.',
    ['err.noCharInfo']          = 'Wir konnten deine Charakterdaten nicht lesen.',
    ['err.noNumber']            = 'Wir konnten keine Urkundennummer erstellen. Bitte versuche es erneut.',
    ['err.noMoney']             = 'Du hast nicht genug Geld auf deinem Bankkonto.',
    ['err.orderFailed']         = 'Wir konnten deine Bestellung nicht bearbeiten. Dir wurde nichts berechnet, bitte versuche es erneut.',
    ['err.badRequest']          = 'Ungültige Anfrage.',
    ['err.busy']                = 'Bitte warte, deine letzte Anfrage wird noch bearbeitet.',
    ['err.generic']             = 'Etwas ist schiefgelaufen. Bitte versuche es erneut.',

    -- Emails
    ['mail.received.subject']   = 'Wir haben deine Bestellung der Geburtsurkunde erhalten',
    ['mail.received.body']      = 'Hallo %s,\n\nwir haben deine Bestellung einer Geburtsurkunde und deine Zahlung von %s%d erhalten.\n\nVoraussichtlich fertig: %s. Wir senden dir eine E-Mail, sobald sie an dich verschickt wurde.',
    ['mail.sent.subject']       = 'Deine Geburtsurkunde ist unterwegs',
    ['mail.sent.body']          = 'Hallo %s,\n\ndeine Geburtsurkunde wurde an %s gesendet. Öffne Postal Prime für deinen Abholcode und hole sie dann aus dem Schließfach ab.\n\nUrkundennummer: %s',
    ['mail.issued.subject']     = 'Deine Geburtsurkunde wurde ausgestellt',
    ['mail.issued.body']        = 'Hallo %s,\n\ndeine Geburtsurkunde ist fertig und befindet sich in deinem Inventar.\n\nUrkundennummer: %s',

    -- Phone notifications
    ['phone.now']               = 'jetzt',
    ['phone.sent.title']        = 'Geburtsurkunde gesendet',
    ['phone.sent.body']         = 'Deine Geburtsurkunde wurde an %s gesendet.',
    ['phone.issued.title']      = 'Geburtsurkunde ausgestellt',
    ['phone.issued.body']       = 'Deine Geburtsurkunde wurde zu deinem Inventar hinzugefügt.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Geburtsurkunde',
    ['item.description']        = 'Geburtsurkunde %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Geburtsurkunde bestellt',
    ['discord.sent']            = 'Geburtsurkunde gesendet',
    ['discord.issued']          = 'Geburtsurkunde ausgestellt',
    ['discord.collected']       = 'Geburtsurkunde abgeholt',
    ['discord.character']       = 'Charakter',
    ['discord.citizenId']       = 'Bürger-ID',
    ['discord.paid']            = 'Bezahlt',
    ['discord.number']          = 'Nummer',
    ['discord.sentTo']          = 'Gesendet an',
    ['discord.inventory']       = 'Inventar',

    -- Certificate (NUI)
    ['card.title']              = 'Geburtsurkunde',
    ['card.subtitle']           = 'Beglaubigte Abschrift eines Eintrags im Geburtenregister',
    ['card.name']               = 'Name',
    ['card.dob']                = 'Geburtsdatum',
    ['card.sex']                = 'Geschlecht',
    ['card.place']              = 'Geburtsort',
    ['card.district']           = 'Registerbezirk',
    ['card.number']             = 'Urkunden-Nr.',
    ['card.issued']             = 'Ausstellungsdatum',
    ['card.issuedBy']           = 'Ausgestellt von',
    ['card.warning']            = 'Nur für Roleplay. Kopien werden auf Anfrage ausgestellt.',
    ['card.male']               = 'Männlich',
    ['card.female']             = 'Weiblich',
    ['card.shownBy']            = '%s zeigt dir die Geburtsurkunde',
    ['card.show']               = 'Der Person in der Nähe zeigen',
    ['card.close']              = 'Schließen',
    ['card.escHint']            = 'Drücke Esc zum Schließen',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'Januar,Februar,März,April,Mai,Juni,Juli,August,September,Oktober,November,Dezember',
}
