require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts Stores.sum(:annual_revenue)
puts Stores.sum(:annual_revenue)/Stores.count
puts Stores.where("annual_revenue > ?", 1000000).count