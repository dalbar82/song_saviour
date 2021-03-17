class AddPositionToSong < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :position, :string
  end
end
