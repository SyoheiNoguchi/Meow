class ContactMailer < ApplicationMailer
    def send_mail(contact)
        @contact = contact
        mail to: 'syohei.noguchi@relic.co.jp', subject: '【お問い合わせ】' + @contact.subject
    end
end
