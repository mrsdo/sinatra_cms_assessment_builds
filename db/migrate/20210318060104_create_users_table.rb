# frozen_string_literal: true

# Create Users Table
class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :username
      t.string :password_digest
      t.integer :listing_id

      t.timestamps null: false
    end
  end
end
