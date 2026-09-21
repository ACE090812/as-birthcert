-- French. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['fr'] = {
    -- Misc
    ['misc.citizen']            = 'Citoyen',
    ['misc.yourLocker']         = 'votre casier',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Acte de naissance',
    ['toast.notReadable']       = 'Cet acte n\'est pas lisible.',
    ['toast.nobodyClose']       = 'Il n\'y a personne d\'assez proche.',
    ['toast.showed']            = 'Vous avez montré votre acte de naissance.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Vous n\'êtes pas connecté.',
    ['err.alreadyPending']      = 'Vous avez déjà une commande d\'acte de naissance en cours.',
    ['err.cooldown']            = 'Vous avez commandé un acte récemment. Veuillez patienter %d minute(s) avant d\'en commander un autre.',
    ['err.chooseLocker']        = 'Choisissez où récupérer votre acte.',
    ['err.noCharInfo']          = 'Nous n\'avons pas pu lire les informations de votre personnage.',
    ['err.noNumber']            = 'Nous n\'avons pas pu créer de numéro d\'acte. Veuillez réessayer.',
    ['err.noMoney']             = 'Vous n\'avez pas assez d\'argent sur votre compte bancaire.',
    ['err.orderFailed']         = 'Nous n\'avons pas pu traiter votre commande. Vous n\'avez pas été débité, veuillez réessayer.',
    ['err.badRequest']          = 'Requête invalide.',
    ['err.busy']                = 'Veuillez patienter, votre dernière demande est encore en cours de traitement.',
    ['err.generic']             = 'Une erreur s\'est produite. Veuillez réessayer.',

    -- Emails
    ['mail.received.subject']   = 'Nous avons bien reçu votre commande d\'acte de naissance',
    ['mail.received.body']      = 'Bonjour %s,\n\nNous avons bien reçu votre commande d\'acte de naissance ainsi que votre paiement de %s%d.\n\nDisponibilité prévue : %s. Nous vous enverrons un e-mail dès son expédition.',
    ['mail.sent.subject']       = 'Votre acte de naissance est en route',
    ['mail.sent.body']          = 'Bonjour %s,\n\nVotre acte de naissance a été envoyé à %s. Ouvrez Postal Prime pour obtenir votre code de retrait, puis récupérez-le dans le casier.\n\nNuméro d\'acte : %s',
    ['mail.issued.subject']     = 'Votre acte de naissance a été délivré',
    ['mail.issued.body']        = 'Bonjour %s,\n\nVotre acte de naissance est prêt et se trouve dans votre inventaire.\n\nNuméro d\'acte : %s',

    -- Phone notifications
    ['phone.now']               = 'maintenant',
    ['phone.sent.title']        = 'Acte de naissance envoyé',
    ['phone.sent.body']         = 'Votre acte de naissance a été envoyé à %s.',
    ['phone.issued.title']      = 'Acte de naissance délivré',
    ['phone.issued.body']       = 'Votre acte de naissance a été ajouté à votre inventaire.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Acte de naissance',
    ['item.description']        = 'Acte de naissance %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Acte de naissance commandé',
    ['discord.sent']            = 'Acte de naissance envoyé',
    ['discord.issued']          = 'Acte de naissance délivré',
    ['discord.collected']       = 'Acte de naissance récupéré',
    ['discord.character']       = 'Personnage',
    ['discord.citizenId']       = 'ID citoyen',
    ['discord.paid']            = 'Payé',
    ['discord.number']          = 'Numéro',
    ['discord.sentTo']          = 'Envoyé à',
    ['discord.inventory']       = 'Inventaire',

    -- Certificate (NUI)
    ['card.title']              = 'Acte de Naissance',
    ['card.subtitle']           = 'Copie certifiée conforme d\'un extrait du registre des naissances',
    ['card.name']               = 'Nom',
    ['card.dob']                = 'Date de naissance',
    ['card.sex']                = 'Sexe',
    ['card.place']              = 'Lieu de naissance',
    ['card.district']           = 'Circonscription d\'enregistrement',
    ['card.number']             = 'Acte n°',
    ['card.issued']             = 'Date de délivrance',
    ['card.issuedBy']           = 'Délivré par',
    ['card.warning']            = 'Usage roleplay uniquement. Des copies sont délivrées sur demande.',
    ['card.male']               = 'Homme',
    ['card.female']             = 'Femme',
    ['card.shownBy']            = '%s vous montre son acte de naissance',
    ['card.show']               = 'Montrer à une personne proche',
    ['card.close']              = 'Fermer',
    ['card.escHint']            = 'Appuyez sur Échap pour fermer',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'janvier,février,mars,avril,mai,juin,juillet,août,septembre,octobre,novembre,décembre',
}
