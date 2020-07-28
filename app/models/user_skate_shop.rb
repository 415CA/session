class UserSkateShop < ApplicationRecord
  belongs_to :user
  belongs_to :skate_shop
end
