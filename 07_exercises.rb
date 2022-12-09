class Vehicle
  def self.miles_per_gallon(miles, gallons) 
    puts "-------------------------------- #{miles/gallons} miles per gallons #--------------------------------"
  end
end

class MyCar < Vehicle
  NUMBER_DOORS = 4

  def NUMBER_DOORS
    puts "Number of doors: #{NUMBER_DOORS}"
  end
  
end

class MyTruck < Vehicle
  NUMBER_DOORS = 8

  def NUMBER_DOORS
    puts "Number of doors: #{NUMBER_DOORS}"
  end
end

car = MyCar.new
truck = MyTruck.new

Vehicle::miles_per_gallon(400, 8)
Vehicle::miles_per_gallon(20, 20)

car.NUMBER_DOORS
truck.NUMBER_DOORS