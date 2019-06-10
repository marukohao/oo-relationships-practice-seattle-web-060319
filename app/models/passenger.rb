class Passenger
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    #returns all rides a passenger has been on
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    #returns all drivers a passenger has ridden with
    list = []
    Ride.all.each do |ride|
      if ride.passenger = self
        list << ride.driver
      end
    end
    list
  end

  def total_distance
    #should calculate the total distance the passenger has travelled with the service
    sum = 0
    self.rides.each do |ride|
      sum += ride.distance
    end
    sum
  end

  def self.premium_members
    #should find all passengers who have travelled over 100 miles with the service
    @@all.select {|passenger| passenger.total_distance >100}
  end

end