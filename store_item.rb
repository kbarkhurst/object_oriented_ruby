#represent items in my store as a hash
shirt = [size: "medium", color: "red", style: "t-shirt"]
skirt = [size: "small", color: "purple", style: "mini"]
pants = [size: "six", color: "black", style: "skinny"]

module ModuleStoreitems
end

class Product
  attr_accessor :name, :size, :color, :style
  # attr_writer :name, :size, :color, :style

  def initialize(input_options)
    @name = input_options[:name]
    @size = input_options[:size]
    @color = input_options[:color]
    @style = input_options[:style]
  end

  # def name
  #   @name
  # end

  # def size
  #   @size
  # end

  # def color
  #   @color
  # end

  # def style
  #   @style
  # end

  # def name=(input_name)
  #   @name = input_name
  # end

  # def size=(input_size)
  #   @size = input_size
  # end

  # def color=(input_color)
  #   @color = input_color
  # end

  # def style=(style_size)
  #   @style = style_size
  # end
end

class Food < Product
  attr_accessor :name, :size, :color, :style, :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

shirt = Product.new({ name: "shirt", size: "medium", color: "red", style: "t-shirt" })
# skirt = Product.new("skirt", "small", "purple", "mini")
# pants = Product.new("pants", "six", "black", "skinny")
p shirt
p shirt.name
p shirt.size
p shirt.color

shirt.color = ("purple")
p shirt
food1 = Food.new({ name: "shirt", size: "medium", color: "red", style: "t-shirt", shelf_life: "1 year" })
p food1
