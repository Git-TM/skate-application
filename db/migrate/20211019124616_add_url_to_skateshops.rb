class AddUrlToSkateshops < ActiveRecord::Migration[6.1]
  def change
    add_column :skateshops, :url, :string
  end
end
