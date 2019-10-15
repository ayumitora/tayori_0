class ScoreMailer < ApplicationMailer
  def score_mail(customer)
    @customer = customer
    mail to: "0araiayumi0@gmail.com",
    subject: "レビューアプリ「TAYORI」よりお知らせ:スコア１００を超えたカスタマーがいます"
  end
end
