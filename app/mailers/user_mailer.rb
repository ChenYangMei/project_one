class UserMailer < ApplicationMailer

  default from: "admin@whyideserveicecream.com"

  def welcome(account)
    @account = account
    mail(:to => @account.email, :subject => "Welcome to Why I Deserve Icecream", :cc => "yangmei.chen2011@gmail.com")
  end

end
