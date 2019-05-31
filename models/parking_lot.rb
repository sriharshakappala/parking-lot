require 'pry'
require 'table_print'

require_relative './slot'

class ParkingLot

  attr_accessor :number_of_slots, :number_of_entries, :slots

  def initialize number_of_slots, number_of_entries
    @slots = []
    @number_of_slots = number_of_entries
    @number_of_entries = number_of_entries
    number_of_slots.times.each do |i|
      slots[i] = Slot.new(i + 1)
    end
    puts "Created a parking lot with #{number_of_slots} slots and #{number_of_entries} entry points"
  end

  def park vehicle_number, vehicle_color, entry
    if free_slot
      free_slot.assign(vehicle_number, vehicle_color)
    else
      puts 'Sorry, parking lot is full'
    end
  end

  def leave slot_number
    if slot_number > 0 || slot_number <= slots.length
      slots[slot_number - 1].free
    else
      puts 'Invalid slot number'
    end
  end

  def status
    tp slots, 'number', 'vehicle.registration_number', 'vehicle.color'
  end

  def reg_numbers_of_vehicles_with_color color
    puts "Registration numbers of vehicles with color: #{color}"
    puts slots.find_all {|slot| slot.vehicle.color == color}.collect {|slot| slot.vehicle.registration_number}.to_s
  end

  def slot_numbers_of_vehicles_with_color color
    puts "Slot numbers of vehicles with color: #{color}"
    puts slots.find_all {|slot| slot.vehicle.color == color}.collect {|slot| slot.number}.to_s
  end

  def slot_number_of_vehicle_with_registration_number registration_number
    puts "Slot numbers of vehicle with registration number: #{registration_number}"
    slot = slots.find {|slot| slot.vehicle.registration_number == registration_number}
    if slot
      puts slot.number
    else
      puts "Sorry, no such vehicle found!"
    end
  end

  private

  def free_slot
    return slots.find { |slot| slot.empty? }
  end

end
