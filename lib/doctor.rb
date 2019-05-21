class Doctor

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end
    def initialize(name)
        @name = name
        @@all << self 
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |this_appt|
            this_appt.doctor == self
        end
    end

    def patients
        self.appointments.map do |list_patients|
         list_patients.patient
        end
    end


end