class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :cover_photo
      t.string :facebook_link
      t.string :instagram_link
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
