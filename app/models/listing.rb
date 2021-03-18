# frozen_string_literal: true

# Listings has_many User.ids
class Listing < ActiveRecord::Base
  belongs_to :user
end
