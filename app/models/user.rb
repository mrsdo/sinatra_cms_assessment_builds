# frozen_string_literal: true

require 'pry'

# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
# user.rb
#   # t.string :fname
#   # t.string :lname
#   # t.string :email
#   # t.string :username
#   # t.string :password_digest
#   # t.integer :listing_id

class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i

  validates :username, :presence => true,
            :uniqueness => true
  validates :email, :presence => true,
            :format => EMAIL_REGEX


end
