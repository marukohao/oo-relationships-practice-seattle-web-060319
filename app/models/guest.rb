class Guest
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    #returns an array of all listings a guest has stayed at
    list = []
    Trip.all.each do |trip|
      if trip.guest == self
        list << trip.listing
      end
    end
    return list
  end

  def trips
    #returns an array of all trips a guest has made
    Trip.all.select {|trip| trip.guest == self}
  end

  def trip_count
    #returns the number of trips a guest has taken
    Trip.all.select {|trip| trip.guest == self}.length
  end

  def self.pro_traveller
    #returns an array of all guests who have made over 1 trip
    @@all.select {|guest| Trip.all.select {|trip| trip.guest == guest}.length > 1}
  end
  
  def self.find_all_by_name(name)
    #takes an argument of a name (as a string), returns the all guests with that name
    @@all.select {|guest| guest.name == name}
  end

end