-- Spanish. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['es'] = {
    -- Misc
    ['misc.citizen']            = 'Ciudadano',
    ['misc.yourLocker']         = 'tu casillero',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Certificado de nacimiento',
    ['toast.notReadable']       = 'Este certificado no se puede leer.',
    ['toast.nobodyClose']       = 'No hay nadie lo bastante cerca.',
    ['toast.showed']            = 'Has mostrado tu certificado de nacimiento.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'No has iniciado sesión.',
    ['err.alreadyPending']      = 'Ya tienes un pedido de certificado de nacimiento en curso.',
    ['err.cooldown']            = 'Has pedido un certificado hace poco. Espera %d minuto(s) antes de pedir otro.',
    ['err.chooseLocker']        = 'Elige dónde recoger tu certificado.',
    ['err.noCharInfo']          = 'No hemos podido leer los datos de tu personaje.',
    ['err.noNumber']            = 'No hemos podido crear un número de certificado. Inténtalo de nuevo.',
    ['err.noMoney']             = 'No tienes suficiente dinero en tu cuenta bancaria.',
    ['err.orderFailed']         = 'No hemos podido procesar tu pedido. No se te ha cobrado nada, inténtalo de nuevo.',
    ['err.badRequest']          = 'Solicitud incorrecta.',
    ['err.busy']                = 'Espera, tu última solicitud aún se está procesando.',
    ['err.generic']             = 'Algo salió mal. Inténtalo de nuevo.',

    -- Emails
    ['mail.received.subject']   = 'Hemos recibido tu pedido de certificado de nacimiento',
    ['mail.received.body']      = 'Hola %s,\n\nHemos recibido tu pedido de un certificado de nacimiento y tu pago de %s%d.\n\nHora prevista de entrega: %s. Te enviaremos un correo cuando te lo hayamos enviado.',
    ['mail.sent.subject']       = 'Tu certificado de nacimiento está en camino',
    ['mail.sent.body']          = 'Hola %s,\n\nTu certificado de nacimiento ha sido enviado a %s. Abre Postal Prime para ver tu código de recogida y luego recógelo en el casillero.\n\nNúmero de certificado: %s',
    ['mail.issued.subject']     = 'Tu certificado de nacimiento ha sido emitido',
    ['mail.issued.body']        = 'Hola %s,\n\nTu certificado de nacimiento está listo y se encuentra en tu inventario.\n\nNúmero de certificado: %s',

    -- Phone notifications
    ['phone.now']               = 'ahora',
    ['phone.sent.title']        = 'Certificado de nacimiento enviado',
    ['phone.sent.body']         = 'Tu certificado de nacimiento ha sido enviado a %s.',
    ['phone.issued.title']      = 'Certificado de nacimiento emitido',
    ['phone.issued.body']       = 'Tu certificado de nacimiento se ha añadido a tu inventario.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Certificado de nacimiento',
    ['item.description']        = 'Certificado de nacimiento %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Certificado de nacimiento solicitado',
    ['discord.sent']            = 'Certificado de nacimiento enviado',
    ['discord.issued']          = 'Certificado de nacimiento emitido',
    ['discord.collected']       = 'Certificado de nacimiento recogido',
    ['discord.character']       = 'Personaje',
    ['discord.citizenId']       = 'ID de ciudadano',
    ['discord.paid']            = 'Pagado',
    ['discord.number']          = 'Número',
    ['discord.sentTo']          = 'Enviado a',
    ['discord.inventory']       = 'Inventario',

    -- Certificate (NUI)
    ['card.title']              = 'Certificado de Nacimiento',
    ['card.subtitle']           = 'Copia certificada de una inscripción en el registro de nacimientos',
    ['card.name']               = 'Nombre',
    ['card.dob']                = 'Fecha de nacimiento',
    ['card.sex']                = 'Sexo',
    ['card.place']              = 'Lugar de nacimiento',
    ['card.district']           = 'Distrito de registro',
    ['card.number']             = 'N.º de certificado',
    ['card.issued']             = 'Fecha de emisión',
    ['card.issuedBy']           = 'Emitido por',
    ['card.warning']            = 'Solo para uso de rol. Se emiten copias bajo petición.',
    ['card.male']               = 'Hombre',
    ['card.female']             = 'Mujer',
    ['card.shownBy']            = '%s te muestra su certificado de nacimiento',
    ['card.show']               = 'Mostrar a una persona cercana',
    ['card.close']              = 'Cerrar',
    ['card.escHint']            = 'Pulsa Esc para cerrar',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'enero,febrero,marzo,abril,mayo,junio,julio,agosto,septiembre,octubre,noviembre,diciembre',
}
