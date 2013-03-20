# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ZClient::Application.initialize!

# Email configuration
#  config.action_mailer.delivery_method = :smtp | :sendmail  
#  config.action_mailer.raise_delivery_errors = true
#  config.action_mailer.smtp_settings = {
#   :address => "smtp.gmail.com",
#    :port => 587,
#    :domain => "domain.of.sender.net",
#    :authentication => "plain",
#    :user_name => "zmessagezest@gmail.com",
#    :password => "zestyzesty",
 #   :enable_starttls_auto => true
 # }
