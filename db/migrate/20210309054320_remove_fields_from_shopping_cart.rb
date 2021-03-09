class RemoveFieldsFromShoppingCart < ActiveRecord::Migration[6.1]
  def change
    remove_reference :shopping_carts, :song, null: false, foreign_key: true
  end
end
