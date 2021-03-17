class Genre < ApplicationRecord

  has_many :songs
  # has_and_belongs_to_many :genres_songs
  # has_many :songs, through: :genres_songs
  # accepts_nested_attributes_for :songs
end
