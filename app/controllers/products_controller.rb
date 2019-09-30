class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_maker!, except: [:index, :show]

  def index
      # @products = current_maker.products
    # @products = Product.all
    # customer_signed_in?
    @products = Product.where(maker_id: params[:maker_id])
    @maker = Maker.find_by(id: params[:maker_id])
    # 自分が評価したプロダクトを除外する？？
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.maker_id = current_maker.id
    @product.save!
    redirect_to products_url, notice: "プロダクト「#{@product.name}」を登録しました。"
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
    params.require(:product).permit(:name, :price, :image, :image_cache, :season)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
