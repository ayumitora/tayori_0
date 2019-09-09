class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_maker!

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save!
    redirect_to products_url, notice: "プロダクト「#{product.name}」を登録しました。"
  end

  def edit
  end

  def update
    @product.update!(product_params)
    redirect_to products_url, notice: "プロダクト「#{@product.name}」を更新しました。"
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: "プロダクト「#{@product.name}」を削除しました。"
  end


  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :season)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
