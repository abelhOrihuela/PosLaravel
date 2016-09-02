class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def new
    @product=Product.new
  end
  def create
    @product=Product.new(set_params)
    @product.save
  end

  private
  def set_params
    params.require(:product).permit(:name, :price, :description, :code, :unity, :code, :provider)
  end
end
