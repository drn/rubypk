# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'faraday', '~> 1.0'
gem 'faraday_middleware', '~> 1.0'
gem 'interactor-rails', '~> 2.2'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4'
gem 'sidekiq', '~> 6.1'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-rails'
end

group :test do
  gem 'rspec-rails'
end
