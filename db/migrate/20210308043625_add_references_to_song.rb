class AddReferencesToSong < ActiveRecord::Migration[6.1]
  def change
    add_reference :songs, :genre, null: false, foreign_key: true
  end
end
