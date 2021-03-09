class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :rating
      t.integer :price
      t.string :state
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
