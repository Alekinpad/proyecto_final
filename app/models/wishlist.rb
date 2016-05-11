class Wishlist < ActiveRecord::Base
  has_many :user_wishlists
  has_many :product_wishlists
end
