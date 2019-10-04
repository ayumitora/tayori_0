class MakerComment < ApplicationRecord
  belongs_to :evaluate
  belongs_to :maker
end
