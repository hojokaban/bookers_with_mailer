class ApplicationMailer < ActionMailer::Base
  default from: 'nonreply@example.com'
  layout 'mailer'

  def thanks(user)
    @user = user
    mail to: user.email, subject: "Thank you for signing in!"
  end
end
