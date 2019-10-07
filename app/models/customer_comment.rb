class CustomerComment < ApplicationRecord
  belongs_to :evaluate
  belongs_to :customer
end
