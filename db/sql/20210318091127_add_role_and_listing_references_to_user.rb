# frozen_string_literal: true

# Add References
class AddRoleAndListingReferencesToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :listing, :user, foreign_key: true
    add_reference :user, :role, foreign_key: true
  end
end
