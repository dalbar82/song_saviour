
class Song < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  has_and_belongs_to_many :genres_songs
  has_many :genre_ids, through: :genres_songs
  accepts_nested_attributes_for :genre_ids
  belongs_to :order
  has_many :line_items, dependent: :destroy
  has_many :bookings

  has_one_attached :audio
  has_rich_text :lyrics

  include PgSearch::Model
                     # Song.search_by_name_and_state("Byeo ") with
  # pg_search_scope :global_search,   # :search_by_name_and_state,   -< this worked
  #   against: [ :name, :state ],
  #   associated_against: {
  #     user: [ :first_name, :last_name ]
  #   },
  #   using: { tsearch: { prefix: true }
  # }
  @song = Song.new
  include PgSearch::Model
   pg_search_scope :global_search,
    against: [:name, :state],
    associated_against: {
      user: [:first_name, :last_name],
      genre: [:genre]
    },
    using: {
      tsearch: { prefix: true }
    }

acts_as_favoritable

end

