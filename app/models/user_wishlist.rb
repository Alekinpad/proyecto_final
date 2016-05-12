class UserWishlist < ActiveRecord::Base
  belongs_to :user
  belongs_to :wishlist
  has_many :product_wishlists
  has_many :products, through: :product_wishlists

  #validates :user_id, :wishlist, uniqueness: true
end
