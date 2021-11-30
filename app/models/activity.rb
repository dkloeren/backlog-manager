class Activity < ApplicationRecord
  has_many :activity_keywords
  has_many :user_items
end
