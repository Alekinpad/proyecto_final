class CreateProductWishlists < ActiveRecord::Migration
  def change
    create_table :product_wishlists do |t|
      t.references :product, index: true, foreign_key: true
      t.references :wishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
