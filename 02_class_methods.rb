class GoodDog
  @@number_of_dogs = 0
  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs


class GoodDog2
  DOG_YEARS = 7
  
  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS    
  end
  def what_is_self
    self    
  end 
end

spark = GoodDog2.new("sparky", 4)
puts spark.age
p spark.what_is_self