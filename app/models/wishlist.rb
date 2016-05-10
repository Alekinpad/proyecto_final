class Wishlist < ActiveRecord::Base
  belongs_to :user
  has_many :product_wishlists
  has_many :products, through: :product_wishlist
  belongs_to :category
end
