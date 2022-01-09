require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Stores.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)
whistler = Stores.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)
yaletown = Stores.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

@mens_stores = Stores.where(
  mens_apparel: true,
  womens_apparel: false
)
@mens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end

@womens_stores_low_revenue = Stores.where(
  ["mens_apparel = true AND annual_revenue < 1000000"]
)
@womens_stores_low_revenue.each do |store|
  puts store.name
  puts store.annual_revenue
end

