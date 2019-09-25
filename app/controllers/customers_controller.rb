class CustomersController < ApplicationController
  before_action :set_customer, only: [:edit, :update, :destroy]
  before_action :authenticate_customer!, except: :index

  def index
    @customers = Customer.all
  end

  def show
    @customer = current_customer
  end


  def edit
  end

  def update
    @customer.update!(customer_params)
    redirect_to action: :show, notice: "カスタマー「#{@customer.display_name}」を更新しました。"
  end

  # def destroy
  #   @customer.destroy
  #   redirect_to customers_url, notice: "カスタマー「#{@customer.name}」を削除しました。"
  # end


  private

  def customer_params
    params.require(:customer).permit(
      :display_name, :full_name, :icon, :icon_cache, :residence
    )
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end