class SkateSpot < ApplicationRecord
  has_many :spot_reviews
  has_many :user_skate_spots
  has_many :users, through: :user_skate_spots
  has_many :users, through: :spot_reviews

  def self.unfavorite_spot
    UserSkateSpot.where(user_id: current_user.id, skate_spot_id: self.id ).destroy_all
  end
end
