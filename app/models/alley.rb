class Alley < ApplicationRecord
  has_one :team
  belongs_to :checkout
end
