class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list_id }
  validates :list, presence: true, uniqueness: { scope: :movie_id }
end
