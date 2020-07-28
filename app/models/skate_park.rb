class SkatePark < ApplicationRecord
  has_many :park_reviews
  has_many :user_skate_parks
  has_many :users, through: :user_skate_parks
  has_many :users, through: :park_reviews

end
