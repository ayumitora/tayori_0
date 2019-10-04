class CustomerCommentsController < ApplicationController

  def create
    @evaluate = Evaluate.find(params[:evaluate_id])
    @customer_comment = @evaluate.customer_comments.build(customer_comment_params)
    respond_to do |format|
      if @customer_comment.save
        format.js { render :index }
        # format.html { redirect_to evaluate_path(@evaluate) }
      else
        format.html { redirect_to evaluate_path(@evaluate), notice: '投稿できませんでした...' }
      end
    end
  end
  private



  def customer_comment_params
    params.require(:customer_comment).permit(:evaluate_id, :content)
  end
end