class AddPlaceToAuthors < ActiveRecord::Migration[7.0]
  def up
    add_column :authors, :place, :string
  end
  def down
    remove_column :auhtors, :price, :string
  end
end
