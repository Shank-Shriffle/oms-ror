class OrderProductsController < ApplicationController
  def create
    byebug
    @order_product = OrderProduct.new(order_product_params)

    if @order_product.save
      flash.alert = "Added to cart successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order_product = OrderProduct.find(params[:id])
    @order_product.delete

    redirect_to products_path, status: :see_other 
  end

  private
  def order_product_params
    params.require(:order_product).permit(:quantity, :amount)
  end
end
