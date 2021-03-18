# frozen_string_literal: true

# Role Class
class Role < ActiveRecord::Base
  belongs_to :user
end
