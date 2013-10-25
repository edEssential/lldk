class ContactMailer < ActionMailer::Base
  
  default from: "\"info@dominichking.com\"<lldk120@gmail.com>"
  
  def initiate_user(contact)
    @contact = user
    mail(to: @contact.email, subject: "Thankyou for signing up!")
  end
  
  def initiate_admin(contact)
    @contact = user
    mail(from: @contact.email, to: "ed_hamilton@hotmail.com", bcc: "ed_hamilton@live.com", subject: "New message from the website!")
  end
  
end