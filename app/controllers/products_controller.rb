class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update!(product_params)
    redirect_to products_url, notice: "プロダクト「#{product.name}」を更新しました。"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_url, notice: "プロダクト「#{product.name}」を削除しました。"
  end


  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :season)
  end
end
