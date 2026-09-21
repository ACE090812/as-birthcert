-- Portuguese (Brazil). Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['pt-br'] = {
    -- Misc
    ['misc.citizen']            = 'Cidadão',
    ['misc.yourLocker']         = 'seu armário',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Certidão de nascimento',
    ['toast.notReadable']       = 'Esta certidão não pode ser lida.',
    ['toast.nobodyClose']       = 'Não há ninguém perto o suficiente.',
    ['toast.showed']            = 'Você mostrou sua certidão de nascimento.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Você não está conectado.',
    ['err.alreadyPending']      = 'Você já tem um pedido de certidão de nascimento em andamento.',
    ['err.cooldown']            = 'Você pediu uma certidão recentemente. Aguarde %d minuto(s) antes de pedir outra.',
    ['err.chooseLocker']        = 'Escolha onde retirar sua certidão.',
    ['err.noCharInfo']          = 'Não foi possível ler os dados do seu personagem.',
    ['err.noNumber']            = 'Não foi possível gerar um número de certidão. Tente novamente.',
    ['err.noMoney']             = 'Você não tem dinheiro suficiente na sua conta bancária.',
    ['err.orderFailed']         = 'Não foi possível processar seu pedido. Você não foi cobrado, tente novamente.',
    ['err.badRequest']          = 'Requisição inválida.',
    ['err.busy']                = 'Aguarde, sua última solicitação ainda está sendo processada.',
    ['err.generic']             = 'Algo deu errado. Tente novamente.',

    -- Emails
    ['mail.received.subject']   = 'Recebemos seu pedido de certidão de nascimento',
    ['mail.received.body']      = 'Olá %s,\n\nRecebemos seu pedido de certidão de nascimento e seu pagamento de %s%d.\n\nPrevisão de conclusão: %s. Enviaremos um e-mail quando ela for enviada a você.',
    ['mail.sent.subject']       = 'Sua certidão de nascimento está a caminho',
    ['mail.sent.body']          = 'Olá %s,\n\nSua certidão de nascimento foi enviada para %s. Abra o Postal Prime para ver seu código de retirada e depois retire-a no armário.\n\nNúmero da certidão: %s',
    ['mail.issued.subject']     = 'Sua certidão de nascimento foi emitida',
    ['mail.issued.body']        = 'Olá %s,\n\nSua certidão de nascimento está pronta e está no seu inventário.\n\nNúmero da certidão: %s',

    -- Phone notifications
    ['phone.now']               = 'agora',
    ['phone.sent.title']        = 'Certidão de nascimento enviada',
    ['phone.sent.body']         = 'Sua certidão de nascimento foi enviada para %s.',
    ['phone.issued.title']      = 'Certidão de nascimento emitida',
    ['phone.issued.body']       = 'Sua certidão de nascimento foi adicionada ao seu inventário.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Certidão de nascimento',
    ['item.description']        = 'Certidão de nascimento %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Certidão de nascimento solicitada',
    ['discord.sent']            = 'Certidão de nascimento enviada',
    ['discord.issued']          = 'Certidão de nascimento emitida',
    ['discord.collected']       = 'Certidão de nascimento retirada',
    ['discord.character']       = 'Personagem',
    ['discord.citizenId']       = 'ID do cidadão',
    ['discord.paid']            = 'Pago',
    ['discord.number']          = 'Número',
    ['discord.sentTo']          = 'Enviado para',
    ['discord.inventory']       = 'Inventário',

    -- Certificate (NUI)
    ['card.title']              = 'Certidão de Nascimento',
    ['card.subtitle']           = 'Cópia autenticada de um registro do livro de nascimentos',
    ['card.name']               = 'Nome',
    ['card.dob']                = 'Data de nascimento',
    ['card.sex']                = 'Sexo',
    ['card.place']              = 'Local de nascimento',
    ['card.district']           = 'Distrito de registro',
    ['card.number']             = 'Certidão nº',
    ['card.issued']             = 'Data de emissão',
    ['card.issuedBy']           = 'Emitida por',
    ['card.warning']            = 'Somente para uso em roleplay. Cópias são emitidas mediante solicitação.',
    ['card.male']               = 'Masculino',
    ['card.female']             = 'Feminino',
    ['card.shownBy']            = '%s mostra a certidão de nascimento para você',
    ['card.show']               = 'Mostrar para pessoa próxima',
    ['card.close']              = 'Fechar',
    ['card.escHint']            = 'Pressione Esc para fechar',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'janeiro,fevereiro,março,abril,maio,junho,julho,agosto,setembro,outubro,novembro,dezembro',
}
