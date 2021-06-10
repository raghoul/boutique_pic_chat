class UserMailer < ApplicationMailer
  default from: 'boutique_pic_chat@yopmail.com'
 
  def welcome_email(user)
    @user = user

    @url  = 'https://boutique_pic_chat-thp.herokuapp.com/'

    mail(to: @user.email, subject: 'Bienvenue chez Boutique Pic Chat !')
  end

  def order_email(order)
    @order = order

    @cart = @order.user.cart

    @user = User.find(order.user_id)

    @url  = 'https://boutique_pic_chat-thp.herokuapp.com/'

    mail(to: @user.email, subject: 'Vos achats chez Boutique Pic Chat !')
  end

  
end