class AddRefToSong < ActiveRecord::Migration[6.1]
  def change
    add_reference :songs, :genre, foreign_key: true
  end
end
