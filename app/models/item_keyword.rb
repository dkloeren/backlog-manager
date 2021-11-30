class ItemKeyword < ApplicationRecord
  belongs_to :keyword
  belongs_to :game
  belongs_to :activity
  belongs_to :game_playstyle
end
