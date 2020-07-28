class Product < ApplicationRecord
  has_many :skate_shops
  has_many :user_skate_shops, through: :skate_shops
end
