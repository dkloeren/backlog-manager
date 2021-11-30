class Game < ApplicationRecord
  belongs_to :genre
  belongs_to :console

  has_many :user_items
  has_many :game_playstyles
  has_many :game_keywords

  # <- <-
  has_many :list_items, through: :user_items
  # <- ->
  has_many :users, through: :user_items, source: :user

  # validations
end
