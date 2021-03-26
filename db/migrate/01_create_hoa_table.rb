# frozen_string_literal: true

require 'active_record'

TIME    = (ENV['BENCHMARK_TIME'] || 20).to_i
RECORDS = (ENV['BENCHMARK_RECORDS'] || TIME * 1000).to_i

class User < ActiveRecord::Base
  connection.create_table :users, force: true do |t|
    t.string :fname, :lname, :email, :username, :password_digest
    t.timestamps
  end
  has_many :listings
end


