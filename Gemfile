# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4'

group :development, :test do
  gem 'pry-rails'
end

group :test do
  gem 'rspec-rails'
end
