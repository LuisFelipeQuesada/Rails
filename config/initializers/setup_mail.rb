# Configuración para el envío de correos desde Gmail
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'webaparef@gmail.com',
  :password             => 'W3b4p4r3f',
  :authentication       => 'plain',
  :enable_starttls_auto => true 
}

