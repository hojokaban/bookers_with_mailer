class MailerPreview < ActionMailer::Preview

  def thanks
    user = User.first
    Mailer.thanks(user)
  end

end
