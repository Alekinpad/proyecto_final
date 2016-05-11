class CreateProductWishlists < ActiveRecord::Migration
  def change
    create_table :product_wishlists do |t|
      t.references :user_wishlist, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
