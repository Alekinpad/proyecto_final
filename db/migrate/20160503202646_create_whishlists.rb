class CreateWhishlists < ActiveRecord::Migration
  def change
    create_table :whishlists do |t|
      t.integer :type
      t.string :name
      t.string :icon
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
