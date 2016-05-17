class CreateStationLines < ActiveRecord::Migration
  def change
    create_table :station_lines do |t|
      t.references :station, index: true, foreign_key: true
      t.references :line, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
