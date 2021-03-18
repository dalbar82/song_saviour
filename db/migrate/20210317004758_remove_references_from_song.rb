class RemoveReferencesFromSong < ActiveRecord::Migration[6.1]
  def change
    remove_reference :songs, :genre, null: false, foreign_key: true
  end
end
