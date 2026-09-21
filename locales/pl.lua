-- Polish. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['pl'] = {
    -- Misc
    ['misc.citizen']            = 'Obywatel',
    ['misc.yourLocker']         = 'Twoja skrytka',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Akt urodzenia',
    ['toast.notReadable']       = 'Ten dokument jest nieczytelny.',
    ['toast.nobodyClose']       = 'W pobliżu nikogo nie ma.',
    ['toast.showed']            = 'Pokazano Twój akt urodzenia.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Użytkownik nie jest zalogowany.',
    ['err.alreadyPending']      = 'Masz już zamówienie aktu urodzenia w trakcie realizacji.',
    ['err.cooldown']            = 'Niedawno złożono zamówienie na akt. Poczekaj %d min przed złożeniem kolejnego.',
    ['err.chooseLocker']        = 'Wybierz, gdzie odebrać akt.',
    ['err.noCharInfo']          = 'Nie udało się odczytać danych Twojej postaci.',
    ['err.noNumber']            = 'Nie udało się utworzyć numeru aktu. Spróbuj ponownie.',
    ['err.noMoney']             = 'Nie masz wystarczających środków na koncie bankowym.',
    ['err.orderFailed']         = 'Nie udało się przetworzyć zamówienia. Nie pobrano opłaty, spróbuj ponownie.',
    ['err.badRequest']          = 'Nieprawidłowe żądanie.',
    ['err.busy']                = 'Poczekaj, poprzednie żądanie jest nadal przetwarzane.',
    ['err.generic']             = 'Coś poszło nie tak. Spróbuj ponownie.',

    -- Emails
    ['mail.received.subject']   = 'Otrzymaliśmy Twoje zamówienie aktu urodzenia',
    ['mail.received.body']      = 'Witaj %s,\n\notrzymaliśmy Twoje zamówienie aktu urodzenia oraz płatność w wysokości %s%d.\n\nPlanowany termin realizacji: %s. Wyślemy Ci e-mail, gdy akt zostanie wysłany.',
    ['mail.sent.subject']       = 'Twój akt urodzenia jest w drodze',
    ['mail.sent.body']          = 'Witaj %s,\n\nTwój akt urodzenia został wysłany. Miejsce odbioru: %s. Otwórz Postal Prime, aby zobaczyć kod odbioru, a następnie odbierz akt ze skrytki.\n\nNumer aktu: %s',
    ['mail.issued.subject']     = 'Twój akt urodzenia został wydany',
    ['mail.issued.body']        = 'Witaj %s,\n\nTwój akt urodzenia jest gotowy i znajduje się w Twoim ekwipunku.\n\nNumer aktu: %s',

    -- Phone notifications
    ['phone.now']               = 'teraz',
    ['phone.sent.title']        = 'Akt urodzenia wysłany',
    ['phone.sent.body']         = 'Twój akt urodzenia został wysłany. Miejsce odbioru: %s.',
    ['phone.issued.title']      = 'Akt urodzenia wydany',
    ['phone.issued.body']       = 'Twój akt urodzenia został dodany do Twojego ekwipunku.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Akt urodzenia',
    ['item.description']        = 'Akt urodzenia %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Akt urodzenia zamówiony',
    ['discord.sent']            = 'Akt urodzenia wysłany',
    ['discord.issued']          = 'Akt urodzenia wydany',
    ['discord.collected']       = 'Akt urodzenia odebrany',
    ['discord.character']       = 'Postać',
    ['discord.citizenId']       = 'ID obywatela',
    ['discord.paid']            = 'Zapłacono',
    ['discord.number']          = 'Numer',
    ['discord.sentTo']          = 'Wysłano do',
    ['discord.inventory']       = 'Ekwipunek',

    -- Certificate (NUI)
    ['card.title']              = 'Akt Urodzenia',
    ['card.subtitle']           = 'Poświadczona kopia wpisu w rejestrze urodzeń',
    ['card.name']               = 'Imię i nazwisko',
    ['card.dob']                = 'Data urodzenia',
    ['card.sex']                = 'Płeć',
    ['card.place']              = 'Miejsce urodzenia',
    ['card.district']           = 'Okręg rejestracji',
    ['card.number']             = 'Nr aktu',
    ['card.issued']             = 'Data wydania',
    ['card.issuedBy']           = 'Wydane przez',
    ['card.warning']            = 'Tylko do użytku w grze fabularnej. Kopie wydawane są na życzenie.',
    ['card.male']               = 'Mężczyzna',
    ['card.female']             = 'Kobieta',
    ['card.shownBy']            = '%s pokazuje Ci swój akt urodzenia',
    ['card.show']               = 'Pokaż osobie w pobliżu',
    ['card.close']              = 'Zamknij',
    ['card.escHint']            = 'Naciśnij Esc, aby zamknąć',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'stycznia,lutego,marca,kwietnia,maja,czerwca,lipca,sierpnia,września,października,listopada,grudnia',
}
