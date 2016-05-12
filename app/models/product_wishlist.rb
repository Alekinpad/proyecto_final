class ProductWishlist < ActiveRecord::Base
  belongs_to :user_wishlist
  belongs_to :product

  #validates :product_id, :user_wishlist, uniqueness: true
end
