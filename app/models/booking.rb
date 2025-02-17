class Booking < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validate :time_validate

  validates :table, uniqueness: {scope: :datetime}
  validates :datetime, uniqueness: {scope: :table}

  def time_validate
    if self.datetime <= DateTime.now
        errors.add(:datetime, "Chosen date and time has passed.")
    end
  end
end
