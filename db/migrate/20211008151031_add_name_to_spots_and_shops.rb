class AddNameToSpotsAndShops < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :name, :string
    add_column :skateshops, :name, :string
  end
end
