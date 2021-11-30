class GamePlaystyle < ApplicationRecord
  belongs_to :playstyle

  has_many :item_keywords
  has_many :user_items
end
