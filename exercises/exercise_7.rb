require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "input store name \n >>"
# input = $stdin.gets.chomp
input = "Brand New Store"
newstore = Store.create(
  name: "input"
)
puts newstore.errors[:name]
puts newstore.errors[:annual_revenue]
puts newstore.errors[:mens_apparel]
puts newstore.errors[:womens_apparel]