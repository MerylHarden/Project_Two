

class UserMailer < ApplicationMailer
  default from: 'merylharden@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'www.gmail.com'
    mail(to: @user.email, subject: 'Welcome to Therapup!')
  end
end
