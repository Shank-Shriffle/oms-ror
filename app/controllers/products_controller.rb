class ProductsController < ApplicationController
  before_action :authenticate_user!

  # GET    /products
  def index
    @products = Product.all
  end

  # GET    /products/:id
  def show
    @product = Product.find(params[:id])
  end

  # GET    /products/new
  def new
    @product = Product.new
  end

  # POST   /products
  def create 
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET    /products/:id/edit
  def edit
    @product = Product.find(params[:id])
  end

  # PUT/PATCH  /products/:id
  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /products/:id
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path, status: :see_other
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :quantity)
  end
end

# Finalized, No changes needed.