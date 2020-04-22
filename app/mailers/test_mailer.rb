class TestMailer < ApplicationMailer
  default from: 'mariacantocastro@gmail.com'
  def welcome_email
    @gift = Gift.first
    mail(to: 'mariacantocastro@gmail.com', subject: 'Welcome to My Awesome Site')
  end
  layout 'mailer'
end
