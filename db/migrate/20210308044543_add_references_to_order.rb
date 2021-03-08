class AddReferencesToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :song, null: false, foreign_key: true
    add_reference :orders, :user, null: false, foreign_key: true
    add_reference :orders, :shopping_cart, null: false, foreign_key: true
  end
end
