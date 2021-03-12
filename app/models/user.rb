class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shopping_carts
  has_many :songs
  has_many :orders
  has_many :bookings
  has_one_attached :photo

  has_rich_text :description

end
