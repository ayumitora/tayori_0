class MakerComment < ApplicationRecord
  belongs_to :evaluate
  belongs_to :maker

  validates :content,
    presence: true,
    length: { maximum: 1000 }
end
