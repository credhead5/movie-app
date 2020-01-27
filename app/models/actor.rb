class Actor < ApplicationRecord


validates :first_name, :last_name, length: { minimum: 2 }
validates :known_for, presence: true
validates :first_name, :last_name, numericality: {greater_than: 13}

end


