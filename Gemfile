# frozen_string_literal: true

source 'http://rubygems.org'
ruby '2.7.2'
gem 'activerecord', require: 'active_record'
gem 'bcrypt'
gem 'dotenv'
gem 'faker'
gem 'mysql2'
gem 'passenger'
gem 'pony'
gem 'rake'
gem 'require_all'
gem 'shotgun'
gem 'sinatra'
gem 'sinatra-activerecord', require: 'sinatra/activerecord'
gem 'sinatra-flash'
gem 'thin'
gem 'tux'

group :production, :development do
  gem 'pry'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
  gem 'rack-test'
  gem 'rspec'
end
