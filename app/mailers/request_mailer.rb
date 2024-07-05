class RequestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request_mailer.deposit_mailer.subject
  #
  
  def request_created(member)
    @member = member
    mail(to: @member.email, subject: 'testing mailer')
  end
  
#   def deposit_mailer
#     @greeting = "Hi"

#     mail to: "to@example.org"
#   end
end
