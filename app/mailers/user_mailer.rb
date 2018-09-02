class UserMailer < ApplicationMailer
  default from: "mperaic@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'mperaic@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def order_created(user, product)
    @appname = "LotusArt"
    @product = product
    @user = user
    mail(to: user.email,
    subject: "Your order at #{@appname}")
  end
end
