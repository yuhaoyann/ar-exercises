require_relative '../setup'
require_relative '../exercises/exercise_1.rb'
require_relative '../exercises/exercise_2.rb'
require_relative '../exercises/exercise_3.rb'
require_relative '../exercises/exercise_4.rb'
require_relative '../exercises/exercise_5.rb'
require_relative '../exercises/exercise_6.rb'
require_relative '../exercises/exercise_7.rb'

puts "Exercise-callbacks 1"
puts "----------"

haoyan = @store1.employees.create(
  first_name: "haoyan",
  last_name: "yu",
  hourly_rate: 60
)

puts haoyan.password