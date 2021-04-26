class Staff < ApplicationRecord
  has_secure_password
  has_many :checkouts

  before_save :experience_check

  def experience_check

    if employment_date.nil?
      self.employment_date = Date.today
    end
    self.experience = ((Date.today - employment_date) / 365).floor
  end

  validates :email, presence: true
end
