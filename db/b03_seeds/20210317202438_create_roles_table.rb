# frozen_string_literal: true

# DB: Create Roles Table
class CreateRolesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :roles, if_not_exists: true do |t|
      t.string :role_name

      t.timestamps null: false
    end
  end
end
