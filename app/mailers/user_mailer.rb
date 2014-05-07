class UserMailer < ActionMailer::Base
  default from: "info@interncity.org"

  def intern_email(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to InternCity")
  end

  def company_email(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to InternCity")
  end

  def mentor_email(user)
    mail(:to => user.name, :subject => "Welcome to InternCity")
  end
end
