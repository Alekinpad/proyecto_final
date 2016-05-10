class RemoveTypeFromWishlist < ActiveRecord::Migration
  def change
    remove_column :wishlists, :type, :integer
  end
end
