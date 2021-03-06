class User < ApplicationRecord
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
end
