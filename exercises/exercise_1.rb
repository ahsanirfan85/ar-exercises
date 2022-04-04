require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store_1 = Store.new
store_1.name = "Burnaby"
store_1.annual_revenue = 300000
store_1.mens_apparel = true
store_1.womens_apparel = true
store_1.save
puts store_1.valid?

store_2 = Store.new
store_2.name = "Richmond"
store_2.annual_revenue = 1260000
store_2.mens_apparel = false
store_2.womens_apparel = true
store_2.save
puts store_2.valid?

store_3 = Store.new
store_3.name = "Gastown"
store_3.annual_revenue = 190000
store_3.mens_apparel = true
store_3.womens_apparel = false
store_3.save
puts store_3.valid?

puts Store.count