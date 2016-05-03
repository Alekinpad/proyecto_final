class AddColumnsBirthdayAndRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :datetime
    add_column :users, :role, :integer
  end
end
