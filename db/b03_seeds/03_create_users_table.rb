# frozen_string_literal: true

# Create Users Table
class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users, if_not_exists: true do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :username
      t.string :password_digest
      # t.references :listings # because a Listing belongs to a User | add_reference migration

      t.timestamps null: false
    end
  end
  # add_reference :Listing, :users
end
