class Evaluate < ApplicationRecord
  before_create :grant_score_10
  after_destroy :minus_score_10
  belongs_to :customer
  belongs_to :product
  has_many :maker_comments, dependent: :destroy
  has_many :customer_comments, dependent: :destroy
  mount_uploader :image, EvaluateImageUploader

  private

  def grant_score_10
    customer = self.customer
    customer.score += 10
    customer.save!
  end

  def minus_score_10
    customer = self.customer
    customer.score -= 10
    customer.save!
  end
end
