class Maker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :site_url,
    presence: true,
    on: :update,
    format: /\A#{URI::regexp(%w(http https))}\z/
  validates :overview,
    presence: true,
    length: { minimum: 1, maximum: 1000 },
    on: :update

  has_many :products

  mount_uploader :image, MakerImageUploader
  mount_uploader :logo, MakerLogoUploader

end
