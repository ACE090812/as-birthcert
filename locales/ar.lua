-- Arabic. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['ar'] = {
    -- Misc
    ['misc.citizen']            = 'مواطن',
    ['misc.yourLocker']         = 'خزانتك',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'شهادة ميلاد',
    ['toast.notReadable']       = 'لا يمكن قراءة هذه الشهادة.',
    ['toast.nobodyClose']       = 'لا يوجد أحد قريب بما يكفي.',
    ['toast.showed']            = 'لقد عرضت شهادة ميلادك.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'لم تقم بتسجيل الدخول.',
    ['err.alreadyPending']      = 'لديك بالفعل طلب شهادة ميلاد قيد التنفيذ.',
    ['err.cooldown']            = 'لقد طلبت شهادة مؤخرًا. يرجى الانتظار %d دقيقة قبل طلب شهادة أخرى.',
    ['err.chooseLocker']        = 'اختر مكان استلام شهادتك.',
    ['err.noCharInfo']          = 'تعذّر علينا قراءة بيانات شخصيتك.',
    ['err.noNumber']            = 'تعذّر علينا إنشاء رقم للشهادة. يرجى المحاولة مرة أخرى.',
    ['err.noMoney']             = 'ليس لديك مبلغ كافٍ في حسابك المصرفي.',
    ['err.orderFailed']         = 'تعذّرت معالجة طلبك. لم يتم خصم أي مبلغ منك، يرجى المحاولة مرة أخرى.',
    ['err.badRequest']          = 'طلب غير صالح.',
    ['err.busy']                = 'يرجى الانتظار، لا يزال طلبك الأخير قيد المعالجة.',
    ['err.generic']             = 'حدث خطأ ما. يرجى المحاولة مرة أخرى.',

    -- Emails
    ['mail.received.subject']   = 'استلمنا طلب شهادة الميلاد الخاص بك',
    ['mail.received.body']      = 'مرحبًا %s،\n\nاستلمنا طلبك للحصول على شهادة ميلاد ودفعتك بقيمة %s%d.\n\nموعد الجاهزية المتوقع: %s. سنرسل لك بريدًا إلكترونيًا عند إرسالها إليك.',
    ['mail.sent.subject']       = 'شهادة ميلادك في الطريق إليك',
    ['mail.sent.body']          = 'مرحبًا %s،\n\nتم إرسال شهادة ميلادك إلى %s. افتح Postal Prime للحصول على رمز الاستلام، ثم استلمها من الخزانة.\n\nرقم الشهادة: %s',
    ['mail.issued.subject']     = 'تم إصدار شهادة ميلادك',
    ['mail.issued.body']        = 'مرحبًا %s،\n\nشهادة ميلادك جاهزة وموجودة في حقيبتك.\n\nرقم الشهادة: %s',

    -- Phone notifications
    ['phone.now']               = 'الآن',
    ['phone.sent.title']        = 'تم إرسال شهادة الميلاد',
    ['phone.sent.body']         = 'تم إرسال شهادة ميلادك إلى %s.',
    ['phone.issued.title']      = 'تم إصدار شهادة الميلاد',
    ['phone.issued.body']       = 'تمت إضافة شهادة ميلادك إلى حقيبتك.',

    -- Item, parcel and bank statement
    ['item.label']              = 'شهادة ميلاد',
    ['item.description']        = 'شهادة ميلاد %s، %s %s',

    -- Discord log
    ['discord.ordered']         = 'تم طلب شهادة الميلاد',
    ['discord.sent']            = 'تم إرسال شهادة الميلاد',
    ['discord.issued']          = 'تم إصدار شهادة الميلاد',
    ['discord.collected']       = 'تم استلام شهادة الميلاد',
    ['discord.character']       = 'الشخصية',
    ['discord.citizenId']       = 'معرّف المواطن',
    ['discord.paid']            = 'المبلغ المدفوع',
    ['discord.number']          = 'الرقم',
    ['discord.sentTo']          = 'أُرسلت إلى',
    ['discord.inventory']       = 'الحقيبة',

    -- Certificate (NUI)
    ['card.title']              = 'شهادة ميلاد',
    ['card.subtitle']           = 'نسخة مصدّقة من قيد في سجل المواليد',
    ['card.name']               = 'الاسم',
    ['card.dob']                = 'تاريخ الميلاد',
    ['card.sex']                = 'الجنس',
    ['card.place']              = 'مكان الميلاد',
    ['card.district']           = 'منطقة التسجيل',
    ['card.number']             = 'رقم الشهادة',
    ['card.issued']             = 'تاريخ الإصدار',
    ['card.issuedBy']           = 'صادرة عن',
    ['card.warning']            = 'للاستخدام في لعب الأدوار فقط. تُصدر النسخ عند الطلب.',
    ['card.male']               = 'ذكر',
    ['card.female']             = 'أنثى',
    ['card.shownBy']            = 'يعرض عليك %s شهادة ميلاده',
    ['card.show']               = 'عرض على شخص قريب',
    ['card.close']              = 'إغلاق',
    ['card.escHint']            = 'اضغط Esc للإغلاق',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'يناير,فبراير,مارس,أبريل,مايو,يونيو,يوليو,أغسطس,سبتمبر,أكتوبر,نوفمبر,ديسمبر',
}
