class Evaluate < ApplicationRecord
  after_save :grant_score
  belongs_to :customer
  belongs_to :product
  has_many :maker_comments, dependent: :destroy
  has_many :customer_comments, dependent: :destroy
  mount_uploader :image, EvaluateImageUploader

  private

  def grant_score
    customer = self.customer
    customer.score += 10
    customer.save!
  end
end
