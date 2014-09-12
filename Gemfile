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

# Development gems
group :development, :test do
  gem 'sqlite3', '~> 1.3.9'   # dev & test database
  gem 'better_errors', '~> 1.1.0'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'quiet_assets', '~> 1.0.3'
end

# Production gems
group :production do
  gem 'pg', '~> 0.17.1' # Postgres Database
  gem 'unicorn', '~> 4.8.3' # WebServer
end

# RSpec
group :test, :development do
  gem 'rspec-rails', '~> 3.0.2'
end
