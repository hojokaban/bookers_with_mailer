# Preview all emails at http://localhost:3000/rails/mailers/thanks_mailer
class ThanksMailerPreview < ActionMailer::Preview

  def thanks
    user = User.first
    ThanksMailer.thanks(user)
  end

end
