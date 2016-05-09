class AddCategoryToWhishlist < ActiveRecord::Migration
  def change
    add_column :whishlists, :category, :integer
  end
end
