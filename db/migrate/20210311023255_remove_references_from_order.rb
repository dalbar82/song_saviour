class RemoveReferencesFromOrder < ActiveRecord::Migration[6.1]
  def change
    remove_reference :orders, :song, null: false, foreign_key: true
  end
end
