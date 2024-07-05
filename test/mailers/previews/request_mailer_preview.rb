# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/deposit_mailer
  def deposit_mailer
    RequestMailer.deposit_mailer
  end

end
