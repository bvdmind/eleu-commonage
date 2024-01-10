class AddRolesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :executive, :boolean
  end
end
