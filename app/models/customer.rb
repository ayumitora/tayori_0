class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :icon, CustomerIconUploader
  has_many :evaluates
  has_many :products, through: :evaluates, dependent: :destroy
end
