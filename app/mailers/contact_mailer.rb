class ContactMailer < ApplicationMailer
  def contact_mail(customer)
    @customer = customer
    # mail to: @customer.mail, subject: "お問い合わせの確認メール"
    mail to: 'default@gmail.com', subject: "お問い合わせの確認メール"
  end
end
