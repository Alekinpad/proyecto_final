class ProductWishlist < ActiveRecord::Base
  belongs_to :user_wishlist
  belongs_to :product
end
