class AddLineAsStringToMetro < ActiveRecord::Migration
  def change
    add_column :metros, :line, :string
  end
end
