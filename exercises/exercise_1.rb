require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Stores < ActiveRecord::Base
end
burnaby = Stores.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Stores.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Stores.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Stores.count