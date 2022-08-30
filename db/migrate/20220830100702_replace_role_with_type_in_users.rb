class ReplaceRoleWithTypeInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :role, :integer
    add_column :users, :type, :string
  end
end
