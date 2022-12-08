class Animal
  attr_accessor :name

  def initialize(n)
    @name = n  
 end

 def speak
  "Hello!"
 end

end

class GoodDog < Animal
  attr_reader :color

  def initialize(name, color)
    super(name)
    @color = color
  end

  def speak
    super + " < That was from super (parent) class"
  end

end

class Cat < Animal
end
class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end
sparky = GoodDog.new("Sparky", "Brown")
paws = Cat.new("Meow")
badDoggie = BadDog.new(2, "bear")

puts "Sparky speak -> " + sparky.speak
puts "Sparky color -> " + sparky.color
puts "paws speak -> " + paws.speak
puts "Paws name-> " + paws.name
puts "Bad dog name -> " + badDoggie.name

