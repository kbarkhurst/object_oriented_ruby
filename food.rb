require "./product.rb"
require "./module_storeitems.rb"

class Food < Product
  attr_accessor :shelf_life

  def initialize
    @shelf_life = input_options[:shelf_life]
  end
end
