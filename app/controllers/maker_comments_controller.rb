class MakerCommentsController < ApplicationController
  before_action :authenticate_maker!, only: [:edit, :create, :destroy]

  def index
  end

  def create
    @maker_comment = MakerComment.new(maker_comment_params)
    @maker_comment.maker_id = current_maker.id
    @maker_comment.save
    redirect_to evaluate_url(id: @maker_comment.evaluate_id), notice: "メーカーコメントを追加しました。"
  end

  def edit

  end

  def destroy

  end

  private
  def maker_comment_params
    params.require(:maker_comment).permit(:evaluate_id, :content)
  end
end
