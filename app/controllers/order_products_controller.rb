class OrderProductsController < ApplicationController
  def index
    @order_products = OrderProduct.all
  end

  def new
    @order_product = OrderProduct.new
  end

  def create
    @order_product = OrderProduct.new(order_product_params)

    if @order_product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @order_product = OrderProduct.find(params[:id])
  end

  def update
    @order_product = OrderProduct.edit(order_product_params)

    if @order_product.save
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order_product = OrderProduct.find(params[:id])
    @order_product.delete

    redirect_to products_path, status: :see_other 
  end
end
