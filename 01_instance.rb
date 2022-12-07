class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)

    self.name = n
    self.height = h
    self.weight = w
  
  end 

  def speak
    "#{name} says Arf!"
  end

  def info
    "#{self.name} weihgs #{self.weight} and is #{self.height} tall."
  end
end

class MyCar
  attr_accessor :speed, :color
  attr_reader :year
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end
  def speedUp(*args)
    self.speed += args.reduce(:+)
    puts "You are now going #{self.speed} km/hr."
  end

  def brake(*args)
    down = args.reduce(:+)
    if down >= self.speed 
      self.speed = 0
      puts "You have screeched to a halt! you are now going #{self.speed} km/hr"
    else
    self.speed -= down
    puts "You have slowed down to #{self.speed} km/hr."
    end
  end

  def car_off
    self.speed = 0
    puts "You have shut the car, your speed is #{self.speed}"    
  end

  def spray_paint(color)
    self.color = color
   puts "You have changed your cars color to #{color}!" 
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10lbs")
fido = GoodDog.new("Fido", "10 inches", "15 lbs")

puts sparky.speak
puts fido.speak
puts sparky.name
puts fido.name = "Dax"
puts fido.name

puts sparky.info
sparky.change_info("Sparkytwo", "24 inches", "45 lbs")
puts sparky.info

civic = MyCar.new("1998", "Red", "Civic")
civic.speed
civic.speedUp(10, 10, 10 )
civic.speed
civic.brake(10)
civic.brake(1, 2, 3)
civic.speed
puts civic.color
puts civic.color = "Blue"
puts civic.color
puts civic.year
# civic.year = "20000"
civic.spray_paint("Pink")
civic.car_off