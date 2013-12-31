class UserMailer < ActionMailer::Base
  default from: "luizhrqas@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_welcome_email.subject
  #
  def send_welcome_email(record)
    @record = record

    mail to: record.email, subject: "Welcome to Remember-App.com!"
  end
end
