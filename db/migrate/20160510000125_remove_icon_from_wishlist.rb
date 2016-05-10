class RemoveIconFromWishlist < ActiveRecord::Migration
  def change
    remove_column :wishlists, :icon, :string
  end
end
