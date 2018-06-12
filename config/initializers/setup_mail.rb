ActionMailer::Base.default_url_options = { host: 'https://ancient-headland-22384.herokuapp.com/' }
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_options = {from: 'willybishop33@gmail.com'}
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  user_name:            'willybishop33@gmail.com',
  password:             'willybishop1',
  authentication:       'plain',
  enable_starttls_auto: true  }