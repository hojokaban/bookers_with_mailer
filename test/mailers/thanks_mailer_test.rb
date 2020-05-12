require 'test_helper'

class ThanksMailerTest < ActionMailer::TestCase

  test "thanks" do
    @user = users(:luffy)
    mail = ThanksMailer.thanks(@user)
    assert_equal "Thank you for signing in!", mail.subject
    assert_equal [@user.email], mail.to
    assert_equal ["nonreply@example.com"], mail.from
    assert_match @user.name, mail.body.encoded
    assert_no_match CGI.escape(@user.email), mail.body.encoded
  end
end
