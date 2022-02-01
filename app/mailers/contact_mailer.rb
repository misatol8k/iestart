class ContactMailer < ApplicationMailer
  def contact_mail(customer)
    @customer = customer
    mail to: 'default@gmail.com', subject: "イエスタートに相談が届きました！"
  end
end
