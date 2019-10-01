class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :maker
  has_many :evaluates
  mount_uploader :image, ProductImageUploader

end
