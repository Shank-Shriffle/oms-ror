class AddDefaultToOrderProductsQuantity < ActiveRecord::Migration[7.0]
  def change
    change_column_default :order_products, :quantity, 1
  end
end
