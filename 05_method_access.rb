class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age
  
  def initialize(n, a, color)
    @name = n
    @age = a
    @color = color
  end

  def public_disclosure
    "#{self.name} in human-years is #{human_years} years old"
  end
  
  def change_name(new_name)
    puts "#{new_name} is now #{self.name}'s name"
    self.name = new_name
  end
  def other_color(other_dog)
    "#{name} is #{self.color} but #{other_dog.name} is #{other_dog.color}"
    
  end
  protected 
  attr_reader :color
  
  private

  def human_years
   age *  DOG_YEARS 
  end
  
end

sparky = GoodDog.new("Sparky",4, "blue")
diggity = GoodDog.new("Diggity", 6, "brown")
# sparky.human_years
puts sparky.public_disclosure
puts sparky.other_color(diggity)
p sparky.name
sparky.change_name("Bobby_biibity")
p sparky.name