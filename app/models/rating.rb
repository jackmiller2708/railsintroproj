class Rating < ApplicationRecord
  has_many :games
  validates :rating, presence: true
end
