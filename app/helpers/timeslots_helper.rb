module TimeslotsHelper
    
    def available?(timeslot)
        !(timeslot.datetime <= DateTime.now)
    end

end
