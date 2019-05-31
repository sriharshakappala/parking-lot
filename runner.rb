require './models/parking_lot'

p = ParkingLot.new(4, 1)

p.park 'KA-01-HH-1234', 'White', 1
p.park 'KA-01-HH-9999', 'White', 1
p.park 'KA-01-BB-0001', 'Red', 1
p.park 'KA-01-HH-7777', 'Black', 1
p.park 'KA-01-HH-3141', 'Blue', 1
p.status
p.leave 3
p.status
p.park 'KA-01-HH-3366', 'Yellow', 1
p.status
p.reg_numbers_of_vehicles_with_color 'White'
p.reg_numbers_of_vehicles_with_color 'Yellow'
p.status
p.slot_numbers_of_vehicles_with_color 'Black'
p.slot_numbers_of_vehicles_with_color 'Red'
p.slot_numbers_of_vehicles_with_color 'Yellow'
p.status
p.slot_number_of_vehicle_with_registration_number 'KA-01-HH-3366'
p.slot_number_of_vehicle_with_registration_number 'KA-01-HH-3399'
