# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

hotel_guest = HotelReservation.new(customer_name: "Micheal", date: "01-08-2016", room_number: 501)
puts "Customer name: " + hotel_guest.customer_name
puts "Customer room no: " + hotel_guest.room_number.to_s
puts "Check-in date: " + hotel_guest.date
puts "Amenties: #{hotel_guest.amenities}"
puts " "
puts "After calling add_a_fridge"
hotel_guest.add_a_fridge
puts "Amenities: #{hotel_guest.amenities}"
puts " "
puts "After calling add_a_crib"
hotel_guest.add_a_crib
puts "Amenities: #{hotel_guest.amenities}"
puts " "
puts "Updating room number of the Customer"
hotel_guest.room_number = 500
puts "New room number is: " + hotel_guest.room_number.to_s
puts ""
puts "After calling add_a_custom_amenity"
hotel_guest.add_a_custom_amenity("stove")
puts "Amenities: #{hotel_guest.amenities}"
puts " "