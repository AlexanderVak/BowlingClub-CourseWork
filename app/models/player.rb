class Player < ApplicationRecord
  has_one :score
  belongs_to :team
end
