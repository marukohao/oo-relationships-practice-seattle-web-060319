class Listing
  attr_accessor :city
  @@all = []
  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    #returns an array of all guests who have stayed at a listing
    list = []
    Trip.all.each do |trip|
      if trip.listing == self
        list << trip.guest
      end
    end
    return list
  end

  def trips
    #returns an array of all trips at a listing
    Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    #returns the number of trips that have been taken to that listing
    Trip.all.select {|trip| trip.listing == self}.length
  end

  def self.find_all_by_city(city)
    #takes an argument of a city name (as a string) and returns all the listings for that city
    @@all.select {|listing| listing.city == city}
  end
  
  def self.most_popular
    #finds the listing that has had the most trips
    hash = Hash.new(0)
    Trip.all.each {|trip| hash[trip.listing] += 1}
    hash.sort_by {|key, value| value}[-1][0]
  end

end