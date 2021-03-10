class Song < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :orders

  has_one_attached :audio
  has_rich_text :lyrics
end
