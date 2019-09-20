class HomeController < ApplicationController
  def index
    @makers = Maker.all
  end

  def show
    @products = Product.where(maker_id: params[:maker_id])
  end
end
