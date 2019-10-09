class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  belongs_to :maker
  has_many :evaluates
  mount_uploader :image, ProductImageUploader
end
