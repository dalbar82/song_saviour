class LineItem < ApplicationRecord
  belongs_to :song
  belongs_to :shopping_cart
  belongs_to :order

def total_price
  self.quantity * self.song.price
end
end
