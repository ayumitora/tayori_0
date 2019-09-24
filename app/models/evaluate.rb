class Evaluate < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  mount_uploader :image, EvaluateImageUploader
end
