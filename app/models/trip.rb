class Trip
  attr_accessor :guest, :listing
  @@all = []
  def initialize(listing, guest)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end


end
