class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres 
  # validates :title, length: { minimum: 2 }
  # validates :plot, length: { maximum: 500 }
  # validates :title, :director, presence: true
end
