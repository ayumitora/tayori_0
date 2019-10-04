class EvaluatesController < ApplicationController
  before_action :set_evaluate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_customer!, except: [:index, :show]

  def index
    @evaluates = Evaluate.where(customer_id: params[:customer_id])
  end

  def show
    @maker_comments = @evaluate.maker_comments
    @maker_comment = MakerComment.new
    # @customer_comments = @evaluate.customer_comments
    # @customer_comment = @evaluate.customer_comments.build
  end

  def new
    @evaluate = Evaluate.new(product_id: params[:product_id])
    @evaluate.customer_id = current_customer.id
  end

  def create
    @evaluate = Evaluate.new(evaluate_params)
    @evaluate.customer_id = current_customer.id
    @evaluate.save!
    redirect_to evaluate_url(id: @evaluate.id), notice: "「#{@evaluate.product.name}」の評価を登録しました。"
  end

  def edit
  end

  def update
    @evaluate.update!(evaluate_params)
    redirect_to evaluates_url(customer_id: @evaluate.customer_id), notice: "プロダクト「#{@evaluate.product.name}」の評価を更新しました。"
  end
  def destroy
    @evaluate.destroy
    redirect_to evaluates_url(customer_id: @evaluate.customer_id), notice: "プロダクト「#{@evaluate.product.name}」を削除しました。"
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
