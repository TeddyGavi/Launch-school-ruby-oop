module CanTow
  def can_tow?(pounds)
    if pounds < 2000 
      puts "This vehcile can tow #{pounds} lb"
    else
      puts "This vehcile cannot tow #{pounds} lb"
    end
end
end

class Vehicle
  attr_accessor :year, :name, :color
    @@num_vehicles = 0
  
  def self.miles_per_gallon(miles, gallons) 
    puts "-------------------------------- #{miles/gallons} miles per gallons #--------------------------------"
  end
  def self.num_vehicles
    p @@num_vehicles
  end

  def initialize(n, y, c)
    @@num_vehicles += 1
    @name = n
    @year = y
    @color = c
  end

  def old?
    puts "Your vehicle is #{age_of_vehicle} years old."
  end

  private
  def age_of_vehicle
    Time.now.year - self.year 
  end

end

class MyCar < Vehicle
  NUMBER_DOORS = 4

  def NUMBER_DOORS
    puts "Number of doors: #{NUMBER_DOORS}"
  end
  
end

class MyTruck < Vehicle
  include CanTow

  NUMBER_DOORS = 8

  def NUMBER_DOORS
    puts "Number of doors: #{NUMBER_DOORS}"
  end
end

car = MyCar.new("Civic", 1990, "Blue")
truck = MyTruck.new("Dodge", 2008, "white")

Vehicle::miles_per_gallon(400, 8)
Vehicle::miles_per_gallon(20, 20)
Vehicle::num_vehicles

car.NUMBER_DOORS
truck.NUMBER_DOORS
truck.can_tow?(1000)

# puts MyCar.ancestors
# puts MyTruck.ancestors
car.old?
truck.old?



# Student better_grade_than?

class Student
  attr_reader :name
  attr_reader :grade
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(other_student)
      if self.grade < other_student.grade
        puts "#{self.name}: has a lower grade than #{other_student.name}"
      else
        puts "#{self.name}: has a higher grade than #{other_student.name}"
      end
    end
    
    protected :grade
end

biddiy = Student.new("Biddy Boddity", 85)
joe = Student.new("Joe", 90)

# puts joe.grade protected method, error called here
biddiy.better_grade_than?(joe)

