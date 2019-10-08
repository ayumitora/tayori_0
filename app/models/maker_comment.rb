class MakerComment < ApplicationRecord
  belongs_to :evaluate
  belongs_to :maker

  validates :content,
    presence: true,
    length: { minimum: 1, maximum: 2000 }
end
