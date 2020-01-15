class Game < ApplicationRecord
  has_many :frames, inverse_of: :game
end
