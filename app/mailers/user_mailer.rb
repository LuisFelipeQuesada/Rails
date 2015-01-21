class UserMailer < ActionMailer::Base
  default :from => "webaparef@gmail.com"
  
  def welcome_email(user)
  	@user = user
  	@user_email = user.email
  	@url = "www.apawebref.biz" #"www.desolate-peak-9811.herokuapp.com"
  	mail(:to => user.email, :subject => "Bienvenido al sistema que le permite crear referencias en formato APA")
  end
end

