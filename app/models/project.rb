class Project
  attr_accessor :user, :pledge
  attr_reader :pledge_goal_amount
  @@all = []
  def initialize(user, pledge_goal_amount)
    @user = user
    @pledge = []
    @pledge_goal_amount = pledge_goal_amount
    @@all << self
  end

  def self.all
    @@all
  end

  def add_pledge(pledge)
    @pledge << pledge
    pledge.project = self
  end

  def self.no_pledges
    #returns all projects which have no pledges yet
    @@all.select {|project| project.pledge == []}
  end

  def project_total_amount
    sum = 0
    @pledge.each {|pledge| sum += pledge.amount}
    sum
  end

  def self.above_goal
    #returns all projects which have met or exceeded their pledge goal
    @@all.select {|project| project.project_total_amount > project.pledge_goal_amount}
  end

  def self.most_backers
    #returns the project with the highest number of backers
    
  end
end