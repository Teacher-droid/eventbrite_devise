# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
# ActionMailer::Base.smtp_settings = {
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :domain => 'peaceful-brushlands-18116.herokuapp.com', 
#   :authentication => :plain,
#   :user_name => 'apikey',
#   :password => ENV['SENDGRID_PWD'],
#   :enable_starttls_auto => true
# }