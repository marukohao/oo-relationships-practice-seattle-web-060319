class Pledge
  attr_accessor :project
  @@all = []
  def initialize(name, amount)
    @project = project
    @name = name
    @amount = amount
    @@all << self
  end

  def self.all
    @@all
  end

  def user
    #returns the user associated with a particular pledge
    self.user
  end
end