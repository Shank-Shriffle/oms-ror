class RenameUserIdInCart < ActiveRecord::Migration[7.0]
  def change
    rename_column :carts, :user_id, :customer_id
  end
end
