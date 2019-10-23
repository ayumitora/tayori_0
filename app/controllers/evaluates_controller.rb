class EvaluatesController < ApplicationController
  before_action :set_evaluate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_customer!, except: [:index, :show]

  def index
    @evaluates = Evaluate.where(customer_id: params[:customer_id])
    @customer = Customer.find(params[:customer_id])
  end

  def show
    @maker = current_maker
    @maker_comments = @evaluate.maker_comments
    @maker_comment = MakerComment.new
    @customer_comments = @evaluate.customer_comments
    @customer_comment = CustomerComment.new
  end

  def new
    @evaluate = Evaluate.new(product_id: params[:product_id])
    @evaluate.customer_id = current_customer.id
  end

  def create
    @evaluate = Evaluate.new(evaluate_params)
    @evaluate.customer_id = current_customer.id
    if @evaluate.save
      redirect_to evaluate_url(id: @evaluate.id), notice: "「#{@evaluate.product.name}」の評価を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @evaluate.update(evaluate_params)
      redirect_to evaluates_url(customer_id: @evaluate.customer_id), notice: "プロダクト「#{@evaluate.product.name}」の評価を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    if @evaluate.customer == current_customer
      @evaluate.destroy
      redirect_to evaluates_url(customer_id: @evaluate.customer_id), notice: "プロダクト「#{@evaluate.product.name}」を削除しました。"
    else
      redirect_to evaluates_url(customer_id: @evaluate.customer_id), notice: "削除する権限はありません。"
    end
  end


  private
  def evaluate_params
    params.require(:evaluate).permit(:product_id, :customer_id, :rate, :image, :image_cache, :content, :comment)
  end

  # def comment_params
  #   params.require(:evaluate).permit(:id)
  # end

  def set_evaluate
    @evaluate = Evaluate.find(params[:id])
  end
end
