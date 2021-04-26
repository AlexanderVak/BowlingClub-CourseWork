class Checkout < ApplicationRecord
  has_one :alley
  belongs_to :staff
  before_create
end
