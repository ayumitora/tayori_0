class CustomerComment < ApplicationRecord
  before_create :grant_score_3
  after_destroy :minus_score_3

  belongs_to :evaluate
  belongs_to :customer

  validates :content,
    presence: true,
    length: { maximum: 1000 }

  private

  
  def grant_score_3
    if self.customer != self.evaluate.customer
      customer.score += 3
      customer.save!
      if customer.score >= 100
        maker = self.evaluate.product.maker
        ScoreMailer.score_mail(customer, maker).deliver
      end
    end
  end

  def minus_score_3
    if self.customer != self.evaluate.customer
      customer.score -= 3
      customer.save!
    end
  end
end
