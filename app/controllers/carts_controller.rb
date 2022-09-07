class CartsController < ApplicationController
  def show
    @order_products = current_user.order_products
    # Check if query is correct or try to use current_user.order_products.
  end

# Only show action needed.
end
