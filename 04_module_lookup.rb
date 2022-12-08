module Mammal
  def self.not_sure_why_we_would?(num)
    num ** 2
  end
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end 
    class Cat
     def say_name(name)
     p "#{name}" 
     end 
    end
    
end


module Walkable
  def walk
    "I'm walking."
  end
end
module Swimmable
  def swim
     "I'm swimming."
  end
end

module Climbable
  def climb
  "I'm climbing"
  end
end

class Animal
  include Walkable
  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

fido = Animal.new

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new


puts " --- Animal method lookup---" 
puts Animal.ancestors
puts fido.speak
puts GoodDog.ancestors
buddy.speak("Arf!")
kitty.say_name("Kitty!")
puts Mammal::not_sure_why_we_would?(2)
puts Mammal.not_sure_why_we_would?(3)