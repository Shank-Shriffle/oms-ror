class CartsController < ApplicationController
  def create
    @cart = Cart.new(cart_params)

    if @cart.save

    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @order_products = current_user.order_products
    # Check if query is correct or try to use current_user.order_products.
  end

  private
  def cart_params
    params.require(:cart).permit(:customer_id)
  end
# Only create & show action needed.
end
