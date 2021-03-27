class Listing < ActiveRecord::Base
  has_many :users, through: :users

  # scope method
  def self.search(query)
    where("? LIKE ?", "%#{query}%")
  end

  def self.alphabetize
    order(address: :asc)
  end

  # def self.by_genre(genre)
  #   where(genre: genre)
  # end

  def self.all_users
    self.pluck(:users).uniq
  end
end
