class Customer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :icon, CustomerIconUploader

  has_many :evaluates, dependent: :destroy
  has_many :products, through: :evaluates, dependent: :destroy

  validates :display_name, presence: true, on: :update
  validates :full_name, presence: true
  validates :residence, presence: true, on: :update
end
