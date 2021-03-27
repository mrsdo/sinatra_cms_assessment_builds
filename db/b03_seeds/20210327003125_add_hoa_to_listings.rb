class AddHoaToListings < ActiveRecord::Migration[6.1]
  def change
    add_reference :listings, :hoa, foreign_key:true
  end
end
