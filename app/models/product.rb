class Product < ApplicationRecord
  belongs_to :maker
  mount_uploader :image, ProductImageUploader

end
