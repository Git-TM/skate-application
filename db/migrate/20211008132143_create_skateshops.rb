class CreateSkateshops < ActiveRecord::Migration[6.1]
  def change
    create_table :skateshops do |t|
      t.string :address

      t.timestamps
    end
  end
end
