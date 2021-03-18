# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'development'
require 'bundler/setup'
require 'mysql2'
require 'dotenv'
Dotenv.load

Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.logger = Logger.new($stdout)

# configure :development do
#   ActiveRecord::Base.establish_connection(
#     adapter: 'mysql2',
#     encoding: 'utf8',
#     database: "<%= ENV["DATABASE_KEY"] %>",
#     username: "<%= ENV["USERNAME_KEY"] %>",
#     password: "<%= ENV["PASSWORD_KEY"] %>"
#   )
# end

configure :production do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'mysql://localhost/mydb')
end

require_all 'app'
