# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.7"

gem "rails", "~> 6.0.0"
gem "pg", ">= 0.18", "< 2.0"

gem "bootsnap", ">= 1.4.4", require: false
gem "bootstrap-sass", "~> 3.4.1"
gem "faker"
gem "haml-rails"
gem "httparty"
gem "image_processing", "~> 1.2"
gem "interactor-rails"
gem "jquery-rails"
gem "puma", "~> 4.1"
gem "sass-rails", "~> 5.0"
gem "sidekiq"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "webpacker", "~> 4.0"

# Test Suite Gem
gem "rspec-rails", group: [:development, :test]

group :development, :test do
  gem "factory_bot_rails", "~> 5.0"
  gem "pry"
  gem "rubocop-rails_config"
end

group :development do
  gem "brakeman"
  gem "bullet"
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "letter_opener"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
