class UserMailer < ApplicationMailer
  default from: 'seoulite@yopmail.com'
 
  def welcome_email(user)
    @user = user 
    @url  = 'peaceful-brushlands-18116.herokuapp.com' 
    mail(from: 'jordancreyelman1992@gmail.com' ,to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def event_subscription(event_admin, event, user)
    @event_admin = event_admin
    @event = event
    @user = user 
    mail(to: @event_admin.email, subject: 'Confirmation event') 
  end
end

