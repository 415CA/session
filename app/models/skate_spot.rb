class SkateSpot < ApplicationRecord
  has_many :spot_reviews
  has_many :user_skate_spots
  has_many :users, through: :user_skate_spots
  has_many :users, through: :spot_reviews
end
