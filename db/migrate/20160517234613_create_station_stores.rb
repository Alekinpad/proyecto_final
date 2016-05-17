class CreateStationStores < ActiveRecord::Migration
  def change
    create_table :station_stores do |t|
      t.references :station, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
