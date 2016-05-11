class AddIconToWishlist < ActiveRecord::Migration
  def change
    add_column :wishlists, :icon, :string
  end
end
