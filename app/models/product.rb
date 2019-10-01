class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :maker
  mount_uploader :image, ProductImageUploader
  ratyrate_rateable "durability", "comfort", "price", "frequency", "design"

end
