if Rails.env != 'test'
  email_settings = YAML::load(File.open("#{Rails.root.to_s}/config/email.yml"))
  ActionMailer::Base.sendmail_settings = email_settings[Rails.env] unless email_settings[Rails.env].nil?
end