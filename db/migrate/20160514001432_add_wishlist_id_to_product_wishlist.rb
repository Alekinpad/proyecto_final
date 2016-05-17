class AddWishlistIdToProductWishlist < ActiveRecord::Migration
  def change
    add_reference :product_wishlists, :wishlist, index: true, foreign_key: true
  end
end
