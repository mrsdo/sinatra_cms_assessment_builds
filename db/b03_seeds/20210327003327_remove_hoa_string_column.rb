class RemoveHoaStringColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :hoa
  end
end
