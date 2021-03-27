class AddUsersToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :users, foreign_key:true
  end
end
