require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "send_welcome_email" do
    mail = UserMailer.send_welcome_email
    assert_equal "Send welcome email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
