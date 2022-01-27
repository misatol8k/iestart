class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @customer = customer
    mail to: @customer.email, subject: "お問い合わせの確認メール"
  end
end
