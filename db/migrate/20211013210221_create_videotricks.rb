class CreateVideotricks < ActiveRecord::Migration[6.1]
  def change
    create_table :videotricks do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
