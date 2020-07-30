class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :user_skate_spots, :dependent => :destroy
  has_many :user_skate_parks, :dependent => :destroy
  has_many :user_skate_shops, :dependent => :destroy
  has_many :shop_reviews, :dependent => :destroy
  has_many :park_reviews, :dependent => :destroy
  has_many :spot_reviews, :dependent => :destroy
  has_many :skate_shops, through: :user_skate_shops
  has_many :skate_parks, through: :user_skate_parks
  has_many :skate_spots, through: :user_skate_spots
  has_many :skate_shops, through: :shop_reviews
  has_many :skate_parks, through: :park_reviews
  has_many :skate_spots, through: :spot_reviews

  def favorite_spots
    self.user_skate_spots.map{ |spot| spot.skate_spot }.uniq
  end

  def favorite_shops
    self.user_skate_shops.map{ |spot| spot.skate_shop }.uniq
  end
    
  def favorite_parks
    self.user_skate_parks.map{ |spot| spot.skate_park }.uniq
  end
    
end
