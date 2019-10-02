class Evaluate < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  has_many :maker_comments, dependent: :destroy
  has_many :customer_comments, dependent: :destroy
  mount_uploader :image, EvaluateImageUploader
end
