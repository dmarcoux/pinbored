# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.0.0"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false
# Send HTML instead of JSON over the wire
gem "hotwire-rails"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Puma as the app server
gem "puma", "~> 5.0"
# You should know... it's a unicorn!
gem "rails", "~> 6.1.3"
# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"
# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"
# Integrate Tailwind CSS with the asset pipeline
gem "tailwindcss-rails"

group :development, :test do
  # Audit Gemfile.lock for vulnerable versions of gems and insecure gem sources (http://)
  gem "bundler-audit"
  # Alternative to IRB (interactive Ruby)
  gem "pry"
  # Step-by-step debugging and stack navigation in Pry
  gem "pry-byebug"
  # Behaviour Driven Development for Ruby
  gem "rspec"
  # Behaviour Driven Development for Rails
  gem "rspec-rails"
  # Linter for Ruby
  gem "rubocop", require: false
  # Linter for performance checks in Ruby
  gem "rubocop-performance", require: false
  # Linter for Rails
  gem "rubocop-rails", require: false
  # Linter for RSpec
  gem "rubocop-rspec", require: false
end

group :development do
  # Notifies Rails about changes in files, which then reloads files
  gem "listen", "~> 3.3"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
end

group :test do
  # Integration testing tool
  gem "capybara", ">= 3.26"
  # Browser automation framework
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
