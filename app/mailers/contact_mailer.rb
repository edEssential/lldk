class ContactMailer < ActionMailer::Base
  
  default from: "\"info@dominichking.com\"<lldk120@gmail.com>"
  
  def initiate_user(user)
    @user = user
    mail(to: @user.email, subject: "Thankyou for signing up!")
  end
  
  def initiate_admin(user)
    @user = user
    mail(from: @user.email, to: "ed_hamilton@hotmail.com", bcc: "ed_hamilton@live.com", subject: "New message from the website!")
  end
  
end