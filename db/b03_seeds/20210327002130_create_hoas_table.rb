class CreateHoasTable < ActiveRecord::Migration[6.1]
  def change
    create_table :hoas, if_not_exists: true do |t|
      t.string :contact
      t.string :phone
      t.string :email
      t.string :community
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :website
      # t.reference :listings # because HOA belongs to a Listing | add_reference migration

      t.timestamps null: false
    end
    # add_reference :hoa, :listings, foreign_key
  end
end


