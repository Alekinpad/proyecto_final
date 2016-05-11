class CreateUserWishlists < ActiveRecord::Migration
  def change
    create_table :user_wishlists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :wishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
