class AddDollarToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :dollar, :boolean
  end
end
