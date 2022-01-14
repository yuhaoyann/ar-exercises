require_relative '../setup'
require_relative '../exercises/exercise_1.rb'
require_relative '../exercises/exercise_2.rb'
require_relative '../exercises/exercise_3.rb'
require_relative '../exercises/exercise_4.rb'
require_relative '../exercises/exercise_5.rb'
require_relative '../exercises/exercise_6.rb'
require_relative '../exercises/exercise_7.rb'
require_relative './exercise_1.rb'

puts "Exercise-callbacks 2"
puts "----------"

# Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
if @store1.destroy
  puts "Store destroyed! It has #{@store1.employees.size} =/"
else
  puts "Could not destroy store :)"
end

# # Make sure empty stores can be destroyed
# @empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0, mens_apparel: true)
# if @empty_store.destroy
#   puts "Empty Store destroyed! This is good"
# else
#   puts "Whoa! Empty store should be destroyable... Not cool!"
# end