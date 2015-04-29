ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port => '587',
	:authentication => :plain,
	:user_name => 'app36349476@heroku.com',
	:password =>  'fksnj2mx3045',
	:domain => 'heroku.com',
	:enable_starttls_auto => true
}