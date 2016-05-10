class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.integer :type
      t.string :name
      t.string :icon
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
