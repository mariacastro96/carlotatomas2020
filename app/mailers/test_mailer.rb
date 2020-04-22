class TestMailer < ApplicationMailer
  def welcome_email
    @gift = Gift.first
    my_email = 'mariacantocastro@gmail.com'
    mail(to: my_email, subject: 'Welcome to My Awesome Site')
  end
  layout 'mailer'
end
