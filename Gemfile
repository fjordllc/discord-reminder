# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.3'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.1'
gem 'sprockets-rails'
gem 'when-cron'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw], require: false
end

group :development do
  gem 'rubocop-fjord', require: false
  gem 'rubocop-rails', require: false
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
