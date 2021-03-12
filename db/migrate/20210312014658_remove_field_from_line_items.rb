class RemoveFieldFromLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :line_items, :shopping_cart, null: false, foreign_key: true
  end
end
