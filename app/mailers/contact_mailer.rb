class ContactMailer < ActionMailer::Base
  default from: "luizhrqas@gmail.com", to: "luizhrqas@gmail.com"

  def send_email(record)
    @record = record
    
    mail(subject: "Remember-App Contact")
  end
end
