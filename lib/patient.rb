class Patient

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |patient_appt|
            patient_appt.patient == self
        end
    end

    def doctors
        self.appointments.map do |list_doctor|
            list_doctor.doctor
           end
    end
end