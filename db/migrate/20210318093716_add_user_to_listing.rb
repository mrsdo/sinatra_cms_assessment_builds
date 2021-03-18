class AddUserToListing < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :user
  end
end
