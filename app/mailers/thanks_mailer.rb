class ThanksMailer < ApplicationMailer

  def thanks(user)
    @user = user
    mail to: @user.email, subject: "Thank you for signing in!"
  end

end
