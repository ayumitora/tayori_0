class CustomersController < ApplicationController
  before_action :set_customer, only: [:edit, :update, :destroy, :show]
  before_action :authenticate_customer!, except: [:index, :show]

  def index
    @customers = Customer.all
  end

  def show
  end


  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to customer_path, notice: "カスタマー「#{@customer.display_name}」を更新しました。"
    else
      render :edit
    end
  end


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