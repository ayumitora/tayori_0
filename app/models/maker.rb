class Maker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :mail, presence: true
  validates :site_url,
    presence: true,
    on: :update ##updateメソッドのみ有効
  validates :overview,
    presence: true,
    on: :update ##updateメソッドのみ有効


  has_many :products

    mount_uploader :image, MakerImageUploader
    mount_uploader :logo, MakerLogoUploader

end
