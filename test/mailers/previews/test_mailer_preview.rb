class TestMailerPreview < ActionMailer::Preview
  def welcome_email
    # This is how you pass value to params[:user] inside mailer definition!
    TestMailer.welcome_email
  end
end