class RemoveUserFromWishlist < ActiveRecord::Migration
  def change
    remove_reference :wishlists, :user, index: true, foreign_key: true
  end
end
