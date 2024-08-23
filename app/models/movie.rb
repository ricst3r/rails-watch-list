class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
  validates :poster_url, presence: true
  validates :rating, presence: true
end
