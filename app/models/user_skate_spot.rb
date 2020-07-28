class UserSkateSpot < ApplicationRecord
  belongs_to :user
  belongs_to :skate_spot
end
