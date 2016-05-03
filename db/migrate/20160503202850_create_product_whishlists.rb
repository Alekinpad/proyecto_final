class CreateProductWhishlists < ActiveRecord::Migration
  def change
    create_table :product_whishlists do |t|
      t.references :product, index: true, foreign_key: true
      t.references :whishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
