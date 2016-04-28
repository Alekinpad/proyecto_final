class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :phone_number, :string
    add_column :users, :avatar, :string
  end
end
