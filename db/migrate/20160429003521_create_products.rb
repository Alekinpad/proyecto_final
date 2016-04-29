class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.integer :price
      t.integer :stock
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
