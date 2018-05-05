class ProductsController < ApplicationController
  before_action :only =>[:new, :edit, :destroy] do
    redirect_to products_path unless current_user && current_user.admin
  end
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product added"
      redirect_to '/'
    else
      flash[:alert] = "Product not added please try again"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product updated"
      redirect_to products_path
    else
      flash[:alert] = "Product not updated please try again"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product deleted"
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
