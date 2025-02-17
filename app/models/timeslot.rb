class Timeslot < ApplicationRecord
    validates :table, uniqueness: {scope: :datetime}
end
