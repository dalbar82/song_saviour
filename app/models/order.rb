class Order < ApplicationRecord
  belongs_to :user

  has_many :shopping_carts
  has_many :line_items

  def add_line_items(shopping_cart)
    shopping_cart.line_items.each do |item|
      item.shopping_cart = nil
      item.order = self
      item.save
    end
  end
end
