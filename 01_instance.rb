class GoodDog
  attr_accessor :name, :height, :wieght

  def initialize(n, h, w)
    @name = n
    @height = h
    @wieght = w
  end
  
  # def name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end

  def speak
    "#{name} says Arf!"
  end

end
sparky = GoodDog.new("Sparky")
fido = GoodDog.new("Fido")

puts sparky.speak
puts fido.speak
puts sparky.name
puts fido.name = "Dax"
puts fido.name