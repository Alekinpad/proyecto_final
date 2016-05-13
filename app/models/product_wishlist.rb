class ProductWishlist < ActiveRecord::Base
  belongs_to :user_wishlist
  belongs_to :product

  validates :product_id, uniqueness: { scope: :user_wishlist,
    message: "El producto ya está en esa wishlist" }
end
