module ModuleVehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include ModuleVehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include ModuleVehicle

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new
bike1.ring_bell
bike1.turn("up")
p bike1
car1 = Car.new
p car1
