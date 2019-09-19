class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_customer!, except: :index

  def index
    @customers = Customer.all
  end

  def show
  end

  # def new
  # end

  def edit
  end

  def update
    @customer.update!(customer_params)
    redirect_to action: :show, notice: "カスタマー「#{@customer.name}」を更新しました。"
  end

  def destroy
    @customer.destroy
    redirect_to customers_url, notice: "カスタマー「#{@customer.name}」を削除しました。"
  end


  private

  def customer_params
    params.require(:customer).permit(
      :name, :site_url, :overview, :logo, :logo_cache, :image, :image_cache, :ivent
    )
  end

  def set_customer
    @customer = customer.find(params[:id])
  end
end