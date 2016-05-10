class AddCategoryToWishlist < ActiveRecord::Migration
  def change
    add_reference :wishlists, :category, index: true, foreign_key: true
  end
end
