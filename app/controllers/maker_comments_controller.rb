class MakerCommentsController < ApplicationController
  before_action :set_maker_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_maker!, only: [:edit, :create, :destroy]

  def create
    @maker_comment = MakerComment.new(maker_comment_params)
    @maker_comment.maker_id = current_maker.id
    if @maker_comment.save
      redirect_to evaluate_url(id: @maker_comment.evaluate_id), notice: "メーカーコメントを書き込みました"
    else
      @evaluate = @maker_comment.evaluate
      flash[:alert] = @maker_comment.errors.full_messages.shift
      redirect_back fallback_location: @evaluate.maker_comments
      # @evaluate = Evaluate.find(@maker_comment.evaluate_id)
      # render :new
    end
  end

  def edit
  end

  def update
    if @maker_comment.update(maker_comment_params)
      redirect_to evaluate_url(id: @maker_comment.evaluate_id), notice: "メーカーコメントを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @maker_comment.destroy
    redirect_to evaluate_url(id: @maker_comment.evaluate_id), notice: "メーカーコメントを削除しました"
  end


  private

  def set_maker_comment
    @maker_comment = MakerComment.find(params[:id])
  end

  def maker_comment_params
    params.require(:maker_comment).permit(:evaluate_id, :maker_id, :content)
  end
end
