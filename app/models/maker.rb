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
    on: :update,
    length: { maximum: 1000 }

  has_many :products, dependent: :destroy
  has_many :maker_comments, dependent: :destroy

  mount_uploader :image, MakerImageUploader
  mount_uploader :logo, MakerLogoUploader

end
