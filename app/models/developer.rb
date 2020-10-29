class Developer < ApplicationRecord
  has_many :games
  belongs_to :games
end
