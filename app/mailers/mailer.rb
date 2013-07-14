class Mailer < ActionMailer::Base
  default from: "no-reply@community.com"

  def registration(email, code)
    mail(:to => emai, :subject => "Go to link #{code}")
  end
end
