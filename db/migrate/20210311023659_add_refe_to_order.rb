class AddRefeToOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :shopping_cart, foreign_key: true
  end
end
