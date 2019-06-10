class Ingredients
  attr_accessor :dessert, :name, :calories
  @@all = []
  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    #should return the bakery object for the bakery that uses that ingredient
    self.dessert.bakery
  end

  def self.find_all_by_name(ingredient)
    #should take a string argument return an array of all ingredients that include that string in 
    #their name
    #.find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
    #make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
    list = []
    @@all.each do |ingre|
      if ingre.name.include?(ingredient) 
        list << ingre.name
      end
    end
    list
  end

end