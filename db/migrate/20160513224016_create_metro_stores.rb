class CreateMetroStores < ActiveRecord::Migration
  def change
    create_table :metro_stores do |t|
      t.references :metro, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
