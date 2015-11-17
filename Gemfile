source 'https://rubygems.org'

gem 'rails', '4.2.2'
gem 'metova'

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'webmock'
end

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'fabrication'
  gem 'launchy'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'sqlite3'
  gem 'timecop'
end

group :staging, :production do
  gem 'pg'
  gem 'metova-logger'
end

group :production do
  gem 'newrelic_rpm'
end

# assets
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'

# deployment
gem 'capistrano', '~> 3.0', require: false
gem 'capistrano-rbenv', '~> 2.0'
gem 'capistrano-rails', '~> 1.1', require: false
gem 'capistrano-bundler', '~> 1.1', require: false
gem 'capistrano3-unicorn', require: false
gem 'elbas'

gem 'avocado-docs', '~> 3.0.0'
gem 'aws-healthcheck'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'connection_pool'
gem 'faker'
gem 'figaro'
gem 'responders'
gem 'simple_form'
gem 'spring', group: :development
gem 'unicorn'
gem 'yajl-ruby', require: 'yajl'
gem 'yarjuf'

## Authentication
gem 'devise'
gem 'devise-async'

## Carrierwave (file uploads)
# gem 'carrierwave'
# gem 'metova-carrierwave', '0.0.2'
# gem 'mini_magick'

## Memcached
# gem 'dalli'
# gem 'dalli-elasticache'

## Sidekiq
gem 'sidekiq'
gem 'sidekiq-failures', github: 'mhfs/sidekiq-failures'
gem 'sinatra', require: nil
gem 'capistrano-sidekiq'
gem 'rspec-sidekiq', group: :test

## Pagination
# gem 'kaminari'

## JSON serialization - we will want this to be 0.10.0 when it's released
gem 'active_model_serializers', '~> 0.8.0'

## Push messaging
gem 'pushmeup'

## Authorization
# gem 'pundit'
