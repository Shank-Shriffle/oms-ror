class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path, status: :see_other
  end

# Only index, show, new, create, destroy actions needed.

  private
  def order_params
    params.require(:order).permit(:status, :order_date, :total_amount)
  end
end
