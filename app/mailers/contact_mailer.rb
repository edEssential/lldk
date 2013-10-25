class ContactMailer < ActionMailer::Base
  
  default from: "\"info@dominichking.com\"<lldk120@gmail.com>"
  
  def initiate_user(contact)
    @contact = contact
    mail(to: @contact.email, subject: "Thankyou for signing up!")
  end
  
  def initiate_admin(contact)
    @contact = contact
    mail(from: @contact.email, to: "lldk120@gmail.com", bcc: "ed_hamilton@live.com", subject: "New message from the website!")
  end
  
end