class LineItem < ApplicationRecord
  belongs_to :song
  belongs_to :shopping_cart, optional: true
  belongs_to :order, optional: true
  belongs_to :user
end
