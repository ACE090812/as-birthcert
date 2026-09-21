-- Swedish. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['sv'] = {
    -- Misc
    ['misc.citizen']            = 'Medborgare',
    ['misc.yourLocker']         = 'ditt skåp',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Födelsebevis',
    ['toast.notReadable']       = 'Det här intyget går inte att läsa.',
    ['toast.nobodyClose']       = 'Det finns ingen tillräckligt nära.',
    ['toast.showed']            = 'Du visade ditt födelsebevis.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Du är inte inloggad.',
    ['err.alreadyPending']      = 'Du har redan en beställning av födelsebevis som pågår.',
    ['err.cooldown']            = 'Du har nyligen beställt ett intyg. Vänta %d minut(er) innan du beställer ett nytt.',
    ['err.chooseLocker']        = 'Välj var du vill hämta ditt intyg.',
    ['err.noCharInfo']          = 'Vi kunde inte läsa din karaktärs uppgifter.',
    ['err.noNumber']            = 'Vi kunde inte skapa ett intygsnummer. Försök igen.',
    ['err.noMoney']             = 'Du har inte tillräckligt med pengar på ditt bankkonto.',
    ['err.orderFailed']         = 'Vi kunde inte behandla din beställning. Du har inte debiterats, försök igen.',
    ['err.badRequest']          = 'Ogiltig begäran.',
    ['err.busy']                = 'Vänta, din senaste begäran behandlas fortfarande.',
    ['err.generic']             = 'Något gick fel. Försök igen.',

    -- Emails
    ['mail.received.subject']   = 'Vi har tagit emot din beställning av födelsebevis',
    ['mail.received.body']      = 'Hej %s,\n\nVi har tagit emot din beställning av ett födelsebevis och din betalning på %s%d.\n\nBeräknad klartid: %s. Vi mejlar dig när det har skickats till dig.',
    ['mail.sent.subject']       = 'Ditt födelsebevis är på väg',
    ['mail.sent.body']          = 'Hej %s,\n\nDitt födelsebevis har skickats till %s. Öppna Postal Prime för din hämtningskod och hämta det sedan i skåpet.\n\nIntygsnummer: %s',
    ['mail.issued.subject']     = 'Ditt födelsebevis har utfärdats',
    ['mail.issued.body']        = 'Hej %s,\n\nDitt födelsebevis är klart och finns i ditt inventarie.\n\nIntygsnummer: %s',

    -- Phone notifications
    ['phone.now']               = 'nu',
    ['phone.sent.title']        = 'Födelsebevis skickat',
    ['phone.sent.body']         = 'Ditt födelsebevis har skickats till %s.',
    ['phone.issued.title']      = 'Födelsebevis utfärdat',
    ['phone.issued.body']       = 'Ditt födelsebevis har lagts till i ditt inventarie.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Födelsebevis',
    ['item.description']        = 'Födelsebevis %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Födelsebevis beställt',
    ['discord.sent']            = 'Födelsebevis skickat',
    ['discord.issued']          = 'Födelsebevis utfärdat',
    ['discord.collected']       = 'Födelsebevis hämtat',
    ['discord.character']       = 'Karaktär',
    ['discord.citizenId']       = 'Medborgar-ID',
    ['discord.paid']            = 'Betalat',
    ['discord.number']          = 'Nummer',
    ['discord.sentTo']          = 'Skickat till',
    ['discord.inventory']       = 'Inventarie',

    -- Certificate (NUI)
    ['card.title']              = 'Födelsebevis',
    ['card.subtitle']           = 'Bestyrkt kopia av en post i födelseregistret',
    ['card.name']               = 'Namn',
    ['card.dob']                = 'Födelsedatum',
    ['card.sex']                = 'Kön',
    ['card.place']              = 'Födelseort',
    ['card.district']           = 'Registreringsdistrikt',
    ['card.number']             = 'Intygsnr',
    ['card.issued']             = 'Utfärdandedatum',
    ['card.issuedBy']           = 'Utfärdat av',
    ['card.warning']            = 'Endast för rollspel. Kopior utfärdas på begäran.',
    ['card.male']               = 'Man',
    ['card.female']             = 'Kvinna',
    ['card.shownBy']            = '%s visar sitt födelsebevis för dig',
    ['card.show']               = 'Visa för person i närheten',
    ['card.close']              = 'Stäng',
    ['card.escHint']            = 'Tryck på Esc för att stänga',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'januari,februari,mars,april,maj,juni,juli,augusti,september,oktober,november,december',
}
