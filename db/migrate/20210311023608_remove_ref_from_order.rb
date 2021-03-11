class RemoveRefFromOrder < ActiveRecord::Migration[6.1]
  def change
    remove_reference :orders, :shopping_cart, null: false, foreign_key: true
  end
end
