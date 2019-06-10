require_relative '../config/environment.rb'
require "pry"
def reload
  load 'config/environment.rb'
end

#airbnb test
# listing1 = Listing.new("NYC")
# listing2 = Listing.new("Seattle")
# listing3 = Listing.new("Beijing")
# listing4 = Listing.new("Japan")
# hao = Guest.new("hao")
# gina = Guest.new("gina")
# tom = Guest.new("tom")
# jerry = Guest.new("jerry")
# Trip.new(listing1, hao)
# Trip.new(listing1, gina)
# Trip.new(listing1, tom)
# Trip.new(listing1, jerry)
# Trip.new(listing2, hao)
# Trip.new(listing2, hao)
# Trip.new(listing3, gina)
# Trip.new(listing3, hao)
# Trip.new(listing4, jerry)
# Trip.new(listing4, hao)
#airbnb test

#bakery test
# store1 = Bakery.new("hao's")
# store2 = Bakery.new("tom's")
# toast = Desserts.new( "toast")
# stone = Desserts.new( "stone")
# croissant = Desserts.new("croissant")
# cookies = Desserts.new("cookies")
# store1.add_dessert(toast)
# store1.add_dessert(stone)
# store1.add_dessert(cookies)
# store1.add_dessert(croissant)
# sugar = Ingredients.new("sugar", 10)
# butter = Ingredients.new("butter", 20)
# egg = Ingredients.new("egg", 25)
# oil = Ingredients.new("oil", 10)
# cream = Ingredients.new("cream", 30)
# toast.add_ingredient(sugar)
# toast.add_ingredient(butter)
# stone.add_ingredient(egg)
# stone.add_ingredient(oil)
# cookies.add_ingredient(cream)
# cookies.add_ingredient(sugar)
# croissant.add_ingredient(egg)
# croissant.add_ingredient(cream)
#bakery test

#lyft test
hao = Passenger.new("hao")
gina = Passenger.new("gina")
gerry = Passenger.new("gerry")
tom = Passenger.new("tom")
driver1 = Driver.new("drive1")
driver2 = Driver.new("driver2")
driver3 = Driver.new("driver3")
driver4 = Driver.new("driver4")
Ride.new(hao, driver1, 100)
Ride.new(gina, driver1, 200)
Ride.new(tom, driver1, 50)
Ride.new(gerry, driver1, 120)
Ride.new(hao, driver2, 250)
Ride.new(hao, driver2, 300)
Ride.new(gina, driver3, 50)
Ride.new(hao, driver3, 70)
Ride.new(gerry, driver4, 180)
Ride.new(hao, driver4, 220)
#lyft test
Pry.start
