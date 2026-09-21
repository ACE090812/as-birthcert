-- Turkish. Translated from en.lua: keys, %s / %d placeholders and their order are unchanged.
Locales = Locales or {}

Locales['tr'] = {
    -- Misc
    ['misc.citizen']            = 'Vatandaş',
    ['misc.yourLocker']         = 'dolabınız',

    -- Notifications (ox_lib toasts)
    ['toast.title']             = 'Doğum belgesi',
    ['toast.notReadable']       = 'Bu belge okunamıyor.',
    ['toast.nobodyClose']       = 'Yakınlarda kimse yok.',
    ['toast.showed']            = 'Doğum belgenizi gösterdiniz.',

    -- Errors shown on the government website
    ['err.notSignedIn']         = 'Oturum açmadınız.',
    ['err.alreadyPending']      = 'Devam eden bir doğum belgesi siparişiniz zaten var.',
    ['err.cooldown']            = 'Kısa süre önce bir belge sipariş ettiniz. Başka bir belge sipariş etmeden önce lütfen %d dakika bekleyin.',
    ['err.chooseLocker']        = 'Belgenizi nereden teslim alacağınızı seçin.',
    ['err.noCharInfo']          = 'Karakter bilgilerinizi okuyamadık.',
    ['err.noNumber']            = 'Belge numarası oluşturamadık. Lütfen tekrar deneyin.',
    ['err.noMoney']             = 'Banka hesabınızda yeterli para yok.',
    ['err.orderFailed']         = 'Siparişinizi işleyemedik. Hesabınızdan ücret alınmadı, lütfen tekrar deneyin.',
    ['err.badRequest']          = 'Geçersiz istek.',
    ['err.busy']                = 'Lütfen bekleyin, son isteğiniz hâlâ işleniyor.',
    ['err.generic']             = 'Bir şeyler ters gitti. Lütfen tekrar deneyin.',

    -- Emails
    ['mail.received.subject']   = 'Doğum belgesi siparişinizi aldık',
    ['mail.received.body']      = 'Merhaba %s,\n\nDoğum belgesi siparişinizi ve %s%d tutarındaki ödemenizi aldık.\n\nHazır olma zamanı: %s. Size gönderildiğinde e-posta ile haber vereceğiz.',
    ['mail.sent.subject']       = 'Doğum belgeniz yolda',
    ['mail.sent.body']          = 'Merhaba %s,\n\nDoğum belgeniz şuraya gönderildi: %s. Teslim alma kodunuz için Postal Prime uygulamasını açın, ardından belgeyi dolaptan teslim alın.\n\nBelge numarası: %s',
    ['mail.issued.subject']     = 'Doğum belgeniz düzenlendi',
    ['mail.issued.body']        = 'Merhaba %s,\n\nDoğum belgeniz hazır ve envanterinizde.\n\nBelge numarası: %s',

    -- Phone notifications
    ['phone.now']               = 'şimdi',
    ['phone.sent.title']        = 'Doğum belgesi gönderildi',
    ['phone.sent.body']         = 'Doğum belgeniz şuraya gönderildi: %s.',
    ['phone.issued.title']      = 'Doğum belgesi düzenlendi',
    ['phone.issued.body']       = 'Doğum belgeniz envanterinize eklendi.',

    -- Item, parcel and bank statement
    ['item.label']              = 'Doğum belgesi',
    ['item.description']        = 'Doğum belgesi %s, %s %s',

    -- Discord log
    ['discord.ordered']         = 'Doğum belgesi sipariş edildi',
    ['discord.sent']            = 'Doğum belgesi gönderildi',
    ['discord.issued']          = 'Doğum belgesi düzenlendi',
    ['discord.collected']       = 'Doğum belgesi teslim alındı',
    ['discord.character']       = 'Karakter',
    ['discord.citizenId']       = 'Vatandaş ID',
    ['discord.paid']            = 'Ödenen',
    ['discord.number']          = 'Numara',
    ['discord.sentTo']          = 'Gönderilen yer',
    ['discord.inventory']       = 'Envanter',

    -- Certificate (NUI)
    ['card.title']              = 'Doğum Belgesi',
    ['card.subtitle']           = 'Doğum kayıt defterindeki bir kaydın onaylı örneği',
    ['card.name']               = 'Ad Soyad',
    ['card.dob']                = 'Doğum tarihi',
    ['card.sex']                = 'Cinsiyet',
    ['card.place']              = 'Doğum yeri',
    ['card.district']           = 'Kayıt bölgesi',
    ['card.number']             = 'Belge no.',
    ['card.issued']             = 'Düzenlenme tarihi',
    ['card.issuedBy']           = 'Düzenleyen',
    ['card.warning']            = 'Yalnızca rol yapma amaçlıdır. Kopyalar talep üzerine verilir.',
    ['card.male']               = 'Erkek',
    ['card.female']             = 'Kadın',
    ['card.shownBy']            = '%s size doğum belgesini gösteriyor',
    ['card.show']               = 'Yakındaki kişiye göster',
    ['card.close']              = 'Kapat',
    ['card.escHint']            = 'Kapatmak için Esc tuşuna basın',

    -- Month names for the certificate dates (comma separated, January first)
    ['meta.months']             = 'Ocak,Şubat,Mart,Nisan,Mayıs,Haziran,Temmuz,Ağustos,Eylül,Ekim,Kasım,Aralık',
}
