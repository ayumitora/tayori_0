class MakerCommentsController < ApplicationController
  before_action :authenticate_maker!, only: [:edit, :create, :destroy]

  def index
    # @maker_comments = MakerComment.where(evaluate_id: params[:evaluate_id])
  end

  def create
    @maker_comment = MakerComment.new(maker_comment_params)
    @maker_comment.maker_id = current_maker.id
    @maker_comment.save!
    redirect_back fallback_location: request.referrer
  end

  def edit

  end

  def destroy

  end

  private
  def maker_comment_params
    params.require(:maker_comment).permit(:evaluate_id, :maker_id, :content)
  end
end
