require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Stores.find_by(id: 1)
@store2 = Stores.find_by(id: 2)
@store1.name = "Burnaby1"
puts @store1.name