class CreateSpotphotos < ActiveRecord::Migration[6.1]
  def change
    create_table :spotphotos do |t|
      t.text :description
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
