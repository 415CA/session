class SkateShop < ApplicationRecord
  has_many :shop_reviews
  has_many :user_skate_shops
  has_many :users, through: :user_skate_shops
  has_many :users, through: :shop_reviews
end
