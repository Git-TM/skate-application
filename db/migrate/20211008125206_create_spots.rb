class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.string :address
      t.integer :score_flat
      t.integer :score_popularity

      t.timestamps
    end
  end
end
