class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
    # add_reference :Listing, :users, foreign_key: true
  end
end
