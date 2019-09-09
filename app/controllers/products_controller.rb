class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    # @products = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save!
    redirect_to products_url, notice: "プロダクト「#{product.name}を登録しました。」"
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :season)
  end
end
