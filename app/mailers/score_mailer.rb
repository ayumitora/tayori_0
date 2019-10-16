class ScoreMailer < ApplicationMailer
  def score_mail(customer, maker)
    @customer = customer
    @maker = maker
    mail to: "#{@maker.email}",
    subject: "レビューアプリ「TAYORI」よりお知らせ:スコア１００を超えたカスタマーがいます"
  end
end
