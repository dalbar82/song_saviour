class AddFieldToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :shopping_cart, foreign_key: true
  end
end
