class Genre < ApplicationRecord
  max_paginates_per 13
  has_many :games
end
