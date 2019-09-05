class MakersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @maker = Maker.new
  end

  def create
    maker = Maker.new(maker_params)
    maker.save!
    redirect_to makers_url, notice: "メーカー「#{maker.name}を登録しました。」"
  end

  def edit
  end
end

private

def maker_params
  params.require(:maker).permit(:name, :mail, :password)
end