class MakerCommentsController < ApplicationController
  def create
      # evaluateをパラメータの値から探し出し,evaluateに紐づくcommentsとしてbuildします。
    @evaluate = Evaluate.find(params[:evaluate_id])
    @maker_comment = @evaluate.maker_comments.build(maker_comment_params)
      # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @maker_comment.save
        format.html { redirect_to evaluate_path(@evaluate) }
      else
        format.html { redirect_to evaluate_path(@evaluate), notice: '投稿できませんでした...' }
      end
    end
  end

  private
  def maker_comment_params
    params.require(:maker_comment).permit(:evaluate_id, :content)
  end
end
