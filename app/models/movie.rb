class Movie < ApplicationRecord
  has_many :actors
  validates :title, length: { minimum: 2 }
  validates :plot, length: { maximum: 500 }
  validates :title, :director, presence: true
end
