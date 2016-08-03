# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)
class TV
  attr_accessor :power, :volume, :channel
  def initialize(tv_info)
    @power = tv_info[:power]
    @volume = tv_info[:volume]
    @channel = tv_info[:channel]
  end
end

class Remote < TV
  def initialize(tv)
    super(tv)
  end
  def toggle_power()
    if @power == true
      @power = false
    else
      @power = true
    end
  end
  def increment_volume
    @volume = @volume + 1
  end
  def decrement_volume 
    if @volume == 0
      puts "Already mute"
    else
      @volume = @volume - 1
    end
  end
  def set_channel(ch_number)
    @channel = ch_number
  end
end

tv = {power: false, volume: 0, channel: 1}
remote = Remote.new(tv)
remote.toggle_power
if (remote.power == true)
  puts "TV is on now"
end
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
remote.increment_volume
if remote.volume == 6
  puts "PASS as volume incremented to 6"
end
remote.decrement_volume
if remote.volume == 5
  puts "PASS as volume decreased to 5"
end
remote.set_channel(5)
if remote.channel == 5
  puts "PASS as channel changed to 5"
end
# end



# ====
# class Vehicle
#   def initialize
#     @speed = 0
#     @direction = 'north'
#   end

#   def brake
#     @speed = 0
#   end

#   def accelerate
#     @speed += 10
#   end

#   def turn(new_direction)
#     @direction = new_direction
#   end
# end

# class Car < Vehicle
#   attr_accessor :fuel, :make, :model 

#   def initialize
#     super
#     @fuel = 50
#     @make = "Toyota"
#     @model = "Prius"
#   end

#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

# class Bike < Vehicle
#   attr_accessor :speed, :type, :weight

#   def initialize
#     super
#     @speed = 10
#     @type = MountainBike
#     @weight = "30kgs"
#   end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

# class MountainBike < Bike
#   def vroom
#     puts "Vrooooooooom"
#   end
# end

# bike = Bike.new
# bike.ring_bell
# car = Car.new()
# car.honk_horn
# mtbike = MountainBike.new
# puts car.make
# puts bike.weight
# # bike.honk_horn
# # car.ring_bell