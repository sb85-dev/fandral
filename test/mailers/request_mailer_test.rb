require "test_helper"

class RequestMailerTest < ActionMailer::TestCase
  test "deposit_mailer" do
    mail = RequestMailer.deposit_mailer
    assert_equal "Deposit mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
