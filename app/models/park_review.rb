class ParkReview < ApplicationRecord
  belongs_to :user
  belongs_to :skate_park
end
