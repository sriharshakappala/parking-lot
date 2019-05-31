require_relative './vehicle'

class Slot

  attr_accessor :number, :vehicle

  def initialize number
    @number = number
    @vehicle = nil
  end

  def assign vehicle_number, vehicle_color
    if vehicle
      puts "There's already a vehicle parked in this slot"
    else
      @vehicle = Vehicle.new(vehicle_number, vehicle_color)
      puts "Allocated slot number: #{number}"
    end
  end

  def free
    @vehicle = nil
    puts "Slot number #{number} is free"
  end

  def empty?
    vehicle == nil
  end

  def vehicle_number
    vehicle.registration_number
  end

  def vehicle_color
    vehicle.color
  end

end
