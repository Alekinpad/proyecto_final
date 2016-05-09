class RemoveTypeFromWhishlist < ActiveRecord::Migration
  def change
    remove_column :whishlists, :type, :integer
  end
end
