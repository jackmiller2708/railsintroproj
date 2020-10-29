class Game < ApplicationRecord
  belongs_to :genre, optional: true
  belongs_to :publisher, optional: true
  belongs_to :developer, optional: true
  belongs_to :platform, optional: true
  belongs_to :rating, optional: true
end
