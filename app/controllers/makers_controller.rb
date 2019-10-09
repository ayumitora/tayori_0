class MakersController < ApplicationController
  before_action :set_maker, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_maker!, except: [:index, :show]

  def index
    @makers = Maker.all
  end

  def show
  end

  def edit
  end

  def update
    if @maker.update(maker_params)
      redirect_to maker_url, notice: "メーカー「#{@maker.name}」を更新しました。"
    else
      render :edit
    end
  end

  private

  def maker_params
    params.require(:maker).permit(
      :name, :site_url, :overview, :logo, :logo_cache, :image, :image_cache, :ivent
    )
  end

  def set_maker
    @maker = Maker.find(params[:id])
  end

end
