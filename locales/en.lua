-- English. To add a language copy this file to locales/<code>.lua, translate the VALUES only (keep the keys and
-- the %s / %d placeholders in the same order), change 'en' below to your code and set Config.locale = '<code>'.
Locales = Locales or {}

Locales['en'] = {
    -- Misc
    ['misc.citizen']            = 'Citizen',
    ['misc.yourLocker']         = 'your locker',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Birth certificate',
    ['toast.notReadable']       = 'This certificate is not readable.',
    ['toast.nobodyClose']       = 'There is nobody close enough.',
    ['toast.showed']            = 'You showed your birth certificate.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'You are not signed in.',
    ['err.alreadyPending']      = 'You already have a birth certificate order in progress.',
    ['err.cooldown']            = 'You ordered a certificate recently. Please wait %d minute(s) before ordering another.',
    ['err.chooseLocker']        = 'Choose where to collect your certificate.',
    ['err.noCharInfo']          = 'We could not read your character details.',
    ['err.noNumber']            = 'We could not create a certificate number. Please try again.',
    ['err.noMoney']             = 'You do not have enough money in your bank account.',
    ['err.orderFailed']         = 'We could not process your order. You have not been charged, please try again.',
    ['err.badRequest']          = 'Bad request.',
    ['err.busy']                = 'Please wait, your last request is still being processed.',
    ['err.generic']             = 'Something went wrong. Please try again.',

    -- Emails
    ['mail.received.subject']   = 'We have received your birth certificate order',
    ['mail.received.body']      = 'Hello %s,\n\nWe have received your order for a birth certificate and your payment of %s%d.\n\nIt will be ready at %s. We will email you when it has been sent to you.',
    ['mail.sent.subject']       = 'Your birth certificate is on its way',
    ['mail.sent.body']          = 'Hello %s,\n\nYour birth certificate has been sent to %s. Open Postal Prime for your pickup code, then collect it from the locker.\n\nCertificate number: %s',
    ['mail.issued.subject']     = 'Your birth certificate has been issued',
    ['mail.issued.body']        = 'Hello %s,\n\nYour birth certificate is ready and is in your inventory.\n\nCertificate number: %s',

    -- Phone notifications
    ['phone.now']               = 'now',
    ['phone.sent.title']        = 'Birth certificate sent',
    ['phone.sent.body']         = 'Your birth certificate has been sent to %s.',
    ['phone.issued.title']      = 'Birth certificate issued',
    ['phone.issued.body']       = 'Your birth certificate has been added to your inventory.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Birth certificate',
    ['item.description']        = 'Birth certificate %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Birth certificate ordered',
    ['discord.sent']            = 'Birth certificate sent',
    ['discord.issued']          = 'Birth certificate issued',
    ['discord.collected']       = 'Birth certificate collected',
    ['discord.character']       = 'Character',
    ['discord.citizenId']       = 'Citizen ID',
    ['discord.paid']            = 'Paid',
    ['discord.number']          = 'Number',
    ['discord.sentTo']          = 'Sent to',
    ['discord.inventory']       = 'Inventory',

    -- Certificate (NUI)
    ['card.title']              = 'Certificate of Birth',
    ['card.subtitle']           = 'Certified copy of an entry in the register of births',
    ['card.name']               = 'Name',
    ['card.dob']                = 'Date of birth',
    ['card.sex']                = 'Sex',
    ['card.place']              = 'Place of birth',
    ['card.district']           = 'Registration district',
    ['card.number']             = 'Certificate no.',
    ['card.issued']             = 'Date of issue',
    ['card.issuedBy']           = 'Issued by',
    ['card.warning']            = 'Roleplay use only. Copies are issued on request.',
    ['card.male']               = 'Male',
    ['card.female']             = 'Female',
    ['card.shownBy']            = '%s shows you their birth certificate',
    ['card.show']               = 'Show to person nearby',
    ['card.close']              = 'Close',
    ['card.escHint']            = 'Press Esc to close',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'January,February,March,April,May,June,July,August,September,October,November,December',
}
