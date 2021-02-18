class Vehicle
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize(input_options)
    @speed = input_options[:speed] || 0
    @direction = input_options[:direction] || "north"
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

class Car < Vehicle
  attr_reader :fuel, :make, :model
  attr_writer :fuel, :make, :modl

  def initialize(fuel, make, model)
    super()
    @fuel = input_options[:fuel] || "gas"
    @make = input_options[:make] || "Ford"
    @model = input_options[:model] || "Tacoma"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :type, :weight
  attr_writer :type, :weight

  def initialize(type, weight)
    super()
    @type = input_options[:type] || "built-for-two"
    @weight = input_options[:weight] || "heavy"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new("gas", "ford", "confused")
bike1 = Bike.new
car1.accelerate
bike1.accelerate
bike1.ring_bell
car1.honk_horn
p car1
p bike1
car1.turn("left")
p car1
p bike1.type
