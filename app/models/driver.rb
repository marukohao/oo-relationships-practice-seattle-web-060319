class Driver
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def passenger
    #returns all passengers a driver has had
    passenger_list = []
    Ride.all.each do |ride|
      if ride.driver == self
        passenger_list << ride.driver
      end
    end
    passenger_list
  end

  def rides
    #returns all rides a driver has made
    Ride.all.select {|ride| ride.driver == self}
  end

  def distances
    #should calculate the total distance the driver has travelled with the service
    sum = 0
    self.rides.each do |ride|
      sum += ride.distance
    end
    sum
  end

  def self.mileage_cap(distance)
    #takes an argument of a distance (float) and returns all drivers who have exceeded that mileage
    @@all.select {|driver| driver.distances > distance}
  end

end