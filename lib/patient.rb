class Patient

  attr_accessor :name, :doctor, :appointment

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment (doctor, date)
    #binding.pry
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
      Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    #binding.pry
    appointments.map { |appointment| appointment.doctor }
  end


end
