class User
  attr_accessor :name, :back_project, :project

  def initialize(name)
    @name = name
    @back_project = back_project
    @project = []
  end


  def creat_project(pledge_goal_amount)
    @project << Project.new(self, pledge_goal_amount)
  end

  def get_back_project(project)
    @back_project << project
  end

  def self.highest_pledge
    #returns the user who has made the highest pledge
    
  end

  def self.multi_pledger
    #returns all users who have pledged to multiple projects
  end

  def self.project_creator
    #returns all users who have created a project
  end

end