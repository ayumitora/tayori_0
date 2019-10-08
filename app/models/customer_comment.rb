class CustomerComment < ApplicationRecord
  # before_create :grant_score_3
  # after_destroy :minus_score_3
  belongs_to :evaluate
  belongs_to :customer
  validates :content, presence: true

  private

  def grant_score_3
    customer = current_customer
    if customer != self.customer
      customer.score += 3
      customer.save!
    end
  end

  def minus_score_3
    customer = current_customer
    if customer != self.customer
      customer.score -= 3
      customer.save!
    end
  end
end
