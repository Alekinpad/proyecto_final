class AddCoverPhotoToUser < ActiveRecord::Migration
  def change
    add_column :users, :cover_photo, :string
  end
end
