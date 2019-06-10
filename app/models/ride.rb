class Ride
  attr_accessor :passenger, :driver, :distance
  @@all = []
  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.average_distance
    #should find the average distance of all rides
    sum = 0
    @@all.each {|ride| sum += ride.distance}
    sum / @@all.length 
  end

end