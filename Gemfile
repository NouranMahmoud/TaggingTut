source 'https://rubygems.org'

# Core Gems
gem 'rails', '~> 4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '~> 2.5.3'
gem 'coffee-rails', '~> 4.0.1'
gem 'jquery-rails', '~> 3.1.1'
gem 'jbuilder', '~> 2.1.3'
gem 'bcrypt', '~> 3.1.7'
gem 'foundation-rails', '~> 5.3.3.0'
gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
gem 'byebug'
gem 'clearance'

  gem 'pg', '~> 0.17.1'
gem 'figaro'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'omniauth'

gem 'omniauth-facebook'
# Development gems
group :development, :test do
  gem 'better_errors', '~> 1.1.0'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'quiet_assets', '~> 1.0.3'
end

# Production gems
group :production do # Postgres Database
  gem 'unicorn' # make sure you follow installation instructions for this gem
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end
gem 'rails_12factor', group: :production
# RSpec
group :test, :development do
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
end
