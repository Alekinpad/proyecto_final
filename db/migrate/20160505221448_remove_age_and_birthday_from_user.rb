class RemoveAgeAndBirthdayFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :age, :integer
    remove_column :users, :birthday, :datetime
  end
end
