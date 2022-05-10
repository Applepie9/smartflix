# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby                    '3.0.3'

gem 'bootstrap',        '~> 5.1.3'
gem 'haml',             '~> 5.2'
gem 'importmap-rails'
gem 'jbuilder',         '~> 2.7'
gem 'pg',               '~> 1.3'
gem 'puma',             '~> 5.0'
gem 'rails',            '~> 7.0.2'
gem 'redis',            '~> 4.0'
gem 'rubocop',          '~> 1.27'
gem 'rubocop-rails',    require: false
gem 'rubocop-rspec',    require: false
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails', '~> 1.0.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development do
  gem 'web-console',       '>= 4.1.0'
  gem 'spring'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development, :test do
  gem 'byebug',             platform: :mri
  gem 'capybara'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'rspec-rails',       '~> 5.1', '>= 5.1.1'
end
