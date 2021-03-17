class CreateListingsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :hoa
      t.string :status
      t.date :first_listed
      t.string :bedrooms
      t.string :bathrooms
      t.string :summary
      t.string :sqft
      t.string :asking_price
      t.string :photo_1
      t.string :photo_2
      t.string :photo_3
      t.string :photo_4
      t.integer :user_id # because listings belongs to a specific user
      t.string :phone
      t.string :community

      t.timestamps null: false
    end
  end
end
