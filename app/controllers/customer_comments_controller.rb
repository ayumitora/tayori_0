class CustomerCommentsController < ApplicationController

  def create
    # evaluateをパラメータの値から探し出し,evaluateに紐づくcommentsとしてbuildします。
    @evaluate = Evaluate.find(params[:evaluate_id])
    @customer_comment = @evaluate.customer_comments.build(customer_comment_params)
      # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @customer_comment.save
        format.html { redirect_to evaluate_path(@evaluate) }
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