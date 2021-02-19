module ModuleStoreitems
  attr_accessor :name, :size, :color, :style

  def initialize(input_options)
    @name = input_options[:name]
    @size = input_options[:size]
    @color = input_options[:color]
    @style = input_options[:style]
  end
end
