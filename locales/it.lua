-- Italian. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['it'] = {
    -- Misc
    ['misc.citizen']            = 'Cittadino',
    ['misc.yourLocker']         = 'il tuo armadietto',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Certificato di nascita',
    ['toast.notReadable']       = 'Questo certificato non è leggibile.',
    ['toast.nobodyClose']       = 'Non c\'è nessuno abbastanza vicino.',
    ['toast.showed']            = 'Hai mostrato il tuo certificato di nascita.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Non hai effettuato l\'accesso.',
    ['err.alreadyPending']      = 'Hai già un ordine di certificato di nascita in corso.',
    ['err.cooldown']            = 'Hai ordinato un certificato di recente. Attendi %d minuto/i prima di ordinarne un altro.',
    ['err.chooseLocker']        = 'Scegli dove ritirare il tuo certificato.',
    ['err.noCharInfo']          = 'Non siamo riusciti a leggere i dati del tuo personaggio.',
    ['err.noNumber']            = 'Non siamo riusciti a creare un numero di certificato. Riprova.',
    ['err.noMoney']             = 'Non hai abbastanza denaro sul tuo conto bancario.',
    ['err.orderFailed']         = 'Non siamo riusciti a elaborare il tuo ordine. Non ti è stato addebitato nulla, riprova.',
    ['err.badRequest']          = 'Richiesta non valida.',
    ['err.busy']                = 'Attendi, la tua ultima richiesta è ancora in elaborazione.',
    ['err.generic']             = 'Qualcosa è andato storto. Riprova.',

    -- Emails
    ['mail.received.subject']   = 'Abbiamo ricevuto il tuo ordine di certificato di nascita',
    ['mail.received.body']      = 'Ciao %s,\n\nabbiamo ricevuto il tuo ordine di un certificato di nascita e il tuo pagamento di %s%d.\n\nCompletamento previsto: %s. Ti invieremo un\'e-mail quando ti sarà stato spedito.',
    ['mail.sent.subject']       = 'Il tuo certificato di nascita è in arrivo',
    ['mail.sent.body']          = 'Ciao %s,\n\nil tuo certificato di nascita è stato inviato. Destinazione: %s. Apri Postal Prime per il codice di ritiro, poi ritiralo dall\'armadietto.\n\nNumero certificato: %s',
    ['mail.issued.subject']     = 'Il tuo certificato di nascita è stato emesso',
    ['mail.issued.body']        = 'Ciao %s,\n\nil tuo certificato di nascita è pronto e si trova nel tuo inventario.\n\nNumero certificato: %s',

    -- Phone notifications
    ['phone.now']               = 'ora',
    ['phone.sent.title']        = 'Certificato di nascita inviato',
    ['phone.sent.body']         = 'Il tuo certificato di nascita è stato inviato. Destinazione: %s.',
    ['phone.issued.title']      = 'Certificato di nascita emesso',
    ['phone.issued.body']       = 'Il tuo certificato di nascita è stato aggiunto al tuo inventario.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Certificato di nascita',
    ['item.description']        = 'Certificato di nascita %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Certificato di nascita ordinato',
    ['discord.sent']            = 'Certificato di nascita inviato',
    ['discord.issued']          = 'Certificato di nascita emesso',
    ['discord.collected']       = 'Certificato di nascita ritirato',
    ['discord.character']       = 'Personaggio',
    ['discord.citizenId']       = 'ID cittadino',
    ['discord.paid']            = 'Pagato',
    ['discord.number']          = 'Numero',
    ['discord.sentTo']          = 'Inviato a',
    ['discord.inventory']       = 'Inventario',

    -- Certificate (NUI)
    ['card.title']              = 'Certificato di Nascita',
    ['card.subtitle']           = 'Copia conforme di un atto del registro delle nascite',
    ['card.name']               = 'Nome',
    ['card.dob']                = 'Data di nascita',
    ['card.sex']                = 'Sesso',
    ['card.place']              = 'Luogo di nascita',
    ['card.district']           = 'Distretto di registrazione',
    ['card.number']             = 'Certificato n.',
    ['card.issued']             = 'Data di emissione',
    ['card.issuedBy']           = 'Emesso da',
    ['card.warning']            = 'Solo per uso roleplay. Le copie vengono rilasciate su richiesta.',
    ['card.male']               = 'Maschio',
    ['card.female']             = 'Femmina',
    ['card.shownBy']            = '%s ti mostra il suo certificato di nascita',
    ['card.show']               = 'Mostra alla persona vicina',
    ['card.close']              = 'Chiudi',
    ['card.escHint']            = 'Premi Esc per chiudere',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'gennaio,febbraio,marzo,aprile,maggio,giugno,luglio,agosto,settembre,ottobre,novembre,dicembre',
}
