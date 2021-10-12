class AddCoordinatesToSkateshops < ActiveRecord::Migration[6.1]
  def change
    add_column :skateshops, :latitude, :float
    add_column :skateshops, :longitude, :float
  end
end
