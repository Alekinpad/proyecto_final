class RemoveLineFromMetro < ActiveRecord::Migration
  def change
    remove_column :metros, :line, :integer
  end
end
