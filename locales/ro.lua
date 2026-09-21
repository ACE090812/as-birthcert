-- Romanian. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['ro'] = {
    -- Misc
    ['misc.citizen']            = 'Cetățean',
    ['misc.yourLocker']         = 'căsuța ta',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Certificat de naștere',
    ['toast.notReadable']       = 'Acest certificat nu poate fi citit.',
    ['toast.nobodyClose']       = 'Nu este nimeni suficient de aproape.',
    ['toast.showed']            = 'Ți-ai arătat certificatul de naștere.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Nu ești conectat.',
    ['err.alreadyPending']      = 'Ai deja o comandă de certificat de naștere în curs.',
    ['err.cooldown']            = 'Ai comandat recent un certificat. Te rugăm să aștepți %d minut(e) înainte de a comanda altul.',
    ['err.chooseLocker']        = 'Alege unde vrei să ridici certificatul.',
    ['err.noCharInfo']          = 'Nu am putut citi datele personajului tău.',
    ['err.noNumber']            = 'Nu am putut crea un număr de certificat. Te rugăm să încerci din nou.',
    ['err.noMoney']             = 'Nu ai destui bani în contul bancar.',
    ['err.orderFailed']         = 'Nu am putut procesa comanda. Nu ai fost taxat, te rugăm să încerci din nou.',
    ['err.badRequest']          = 'Cerere invalidă.',
    ['err.busy']                = 'Te rugăm să aștepți, ultima ta cerere este încă în curs de procesare.',
    ['err.generic']             = 'Ceva nu a funcționat. Te rugăm să încerci din nou.',

    -- Emails
    ['mail.received.subject']   = 'Am primit comanda ta de certificat de naștere',
    ['mail.received.body']      = 'Bună %s,\n\nAm primit comanda ta pentru un certificat de naștere și plata ta de %s%d.\n\nFinalizare estimată: %s. Îți vom trimite un e-mail când a fost expediat.',
    ['mail.sent.subject']       = 'Certificatul tău de naștere este pe drum',
    ['mail.sent.body']          = 'Bună %s,\n\nCertificatul tău de naștere a fost expediat. Locul de ridicare: %s. Deschide Postal Prime pentru codul de ridicare, apoi ridică-l din locker.\n\nNumăr certificat: %s',
    ['mail.issued.subject']     = 'Certificatul tău de naștere a fost eliberat',
    ['mail.issued.body']        = 'Bună %s,\n\nCertificatul tău de naștere este gata și se află în inventarul tău.\n\nNumăr certificat: %s',

    -- Phone notifications
    ['phone.now']               = 'acum',
    ['phone.sent.title']        = 'Certificat de naștere expediat',
    ['phone.sent.body']         = 'Certificatul tău de naștere a fost expediat. Locul de ridicare: %s.',
    ['phone.issued.title']      = 'Certificat de naștere eliberat',
    ['phone.issued.body']       = 'Certificatul tău de naștere a fost adăugat în inventarul tău.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Certificat de naștere',
    ['item.description']        = 'Certificat de naștere %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Certificat de naștere comandat',
    ['discord.sent']            = 'Certificat de naștere expediat',
    ['discord.issued']          = 'Certificat de naștere eliberat',
    ['discord.collected']       = 'Certificat de naștere ridicat',
    ['discord.character']       = 'Personaj',
    ['discord.citizenId']       = 'ID cetățean',
    ['discord.paid']            = 'Plătit',
    ['discord.number']          = 'Număr',
    ['discord.sentTo']          = 'Expediat către',
    ['discord.inventory']       = 'Inventar',

    -- Certificate (NUI)
    ['card.title']              = 'Certificat de Naștere',
    ['card.subtitle']           = 'Copie certificată a unei înregistrări din registrul nașterilor',
    ['card.name']               = 'Nume',
    ['card.dob']                = 'Data nașterii',
    ['card.sex']                = 'Sex',
    ['card.place']              = 'Locul nașterii',
    ['card.district']           = 'Circumscripția de înregistrare',
    ['card.number']             = 'Certificat nr.',
    ['card.issued']             = 'Data eliberării',
    ['card.issuedBy']           = 'Eliberat de',
    ['card.warning']            = 'Doar pentru roleplay. Copiile se eliberează la cerere.',
    ['card.male']               = 'Masculin',
    ['card.female']             = 'Feminin',
    ['card.shownBy']            = '%s îți arată certificatul său de naștere',
    ['card.show']               = 'Arată persoanei din apropiere',
    ['card.close']              = 'Închide',
    ['card.escHint']            = 'Apasă Esc pentru a închide',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'ianuarie,februarie,martie,aprilie,mai,iunie,iulie,august,septembrie,octombrie,noiembrie,decembrie',
}
