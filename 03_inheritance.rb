module Swimmable
  def swim
    "I'm swimming"
  end
  
end

class Animal
  attr_accessor :name
  include Swimmable
  def initialize(n)
    @name = n  
 end

 def speak
  "Hello!"
 end

end

class Animal2
  attr_reader :name
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

class Cat < Animal2
end

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

class Bear < Animal2
attr_reader :color
  def initialize(name, color)
  super(name)
  @color = color    
  end
end

class Fish < Animal
  attr_reader :who_am_i
  def initialize(name, who_am_i)
    super(name)
    @who_am_i = who_am_i
  end
end


sparky = GoodDog.new("Sparky", "Brown")
paws = Cat.new("fulffuty")
badDoggie = BadDog.new(2, "bear")
bear = Bear.new("sylis", "White")
gold_fish = Fish.new("Booby the gold fish", "fish")


puts "Sparky speak -> " + sparky.speak
puts "Sparky color -> " + sparky.color
puts "paws speak -> " + paws.speak
puts "Paws name-> " + paws.name
puts "Bad dog name -> " + badDoggie.name
puts "Bear color -> " + bear.color
puts "Does this swim -> " + sparky.swim
puts "Does this swim -> " + gold_fish.name + " Does " + gold_fish.swim  