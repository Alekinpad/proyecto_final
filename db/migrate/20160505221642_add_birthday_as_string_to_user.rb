class AddBirthdayAsStringToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :string
  end
end
