class Bakery
  attr_accessor :store_name
  @@all = []
  def initialize(store_name)
    @store_name = store_name
    @@all << self
    @dessert = []
  end

  def self.all
    @@all
  end

  def ingredient
    #should return an array of ingredients for the bakery's desserts
    list = []
    @dessert.each do |dessert|
      list << dessert.ingredients
    end
    list
  end

  def add_dessert(dessert)
    @dessert << dessert
    # dessert.bakery = self
  end

  def desserts
    #should return an array of desserts the bakery makes
    @dessert
  end

  def average_calories
    #should return a number totaling the average number of calories for the desserts sold at this bakery
    sum = 0
    @dessert.each do |dessert|
      sum += dessert.calories
    end
    sum / @dessert.length
  end

  def shopping_list
    #should return a string of names for ingredients for the bakery
    list = []
    self.ingredient.each do |dessert_ingre|
      dessert_ingre.each do |ingre|
        list << ingre.name
      end
    end
    list.uniq.join(" ")
  end










end