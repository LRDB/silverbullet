class Timeslot < ApplicationRecord
    validates :table, uniqueness: {scope: :datetime}
    validate :time_validate

    def time_validate
        if self.datetime <= DateTime.now
            errors.add(:datetime, "Chosen date and time has passed.")
        end
    end
end
