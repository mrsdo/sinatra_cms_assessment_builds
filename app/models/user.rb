require "active_record"

class User < ActiveRecord::Base
  belongs_to :user
  has_secure_password

  # users reader returns all users in array


  # users<< save to database
  # users.delete(hoa obj)
  # users.destroy(hoa obj)
  # users= [hoa objects...]
  # hoa_ids
  # hoa_ids= [1,2,3]
  # users.clear
  # users.empty?
  # users.size
  # users.find()
  # users.exists?()
  # users.build(attr) not save automatically
  # users.create(attr) will save
  # users.create!(attr)
  # users.reload

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i

  validates :username, :presence => true,
            :uniqueness => true
  validates :email, :presence => true,
            :format => EMAIL_REGEX
end
