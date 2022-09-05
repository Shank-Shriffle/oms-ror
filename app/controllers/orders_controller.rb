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

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.save
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def order_params
    params.require(:product).permit(:status, :order_date, :total_amount)
  end
end
