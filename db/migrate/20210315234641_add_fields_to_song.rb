class AddFieldsToSong < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :status, :string
  end
end
