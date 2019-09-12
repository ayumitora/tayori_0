class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :maker
  mount_uploader :image, ProductImageUploader

end
