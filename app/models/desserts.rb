class Desserts
 attr_accessor :dessert_name, :bakery
 @@all = []
 def initialize(dessert_name)
  @dessert_name = dessert_name
  @ingredient = []
  @@all << self
 end

def add_ingredient(ingredient)
  @ingredient << ingredient
  # ingredient.dessert = self
end

def ingredients
  #should return an array of ingredients for the dessert
  @ingredient
end

def calories
  #should return a number totaling all the calories for all the ingredients included in that dessert
  sum = 0
  @ingredient.each do |ingre|
    sum += ingre.calories
  end
  sum / @ingredient.length
end

def self.all
  @@all
end


end