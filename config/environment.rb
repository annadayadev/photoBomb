# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#we are basically creating a refrence in our local - so we created in heroku, and as well as our local.
ActionMailer::Base.smtp_settings = {
  :address => 'smp.sendgrid.net', 
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
