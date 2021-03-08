class AddReferencesToLineItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :song, null: false, foreign_key: true
    add_reference :line_items, :shopping_cart, null: false, foreign_key: true
    add_reference :line_items, :user, null: false, foreign_key: true
  end
end
