require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store_4 = Store.new
store_4.name = "Surrey"
store_4.annual_revenue = 224000
store_4.mens_apparel = false
store_4.womens_apparel = true
store_4.save
puts store_4.valid?

store_5 = Store.new
store_5.name = "Whistler"
store_5.annual_revenue = 1900000
store_5.mens_apparel = true
store_5.womens_apparel = false
store_5.save
puts store_5.valid?

store_6 = Store.new
store_6.name = "Yaletown"
store_6.annual_revenue = 430000
store_6.mens_apparel = true
store_6.womens_apparel = true
store_6.save
puts store_6.valid?

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |x| puts "Name: #{x.name}, Annual Revenue: #{x.annual_revenue}, Men's Store: #{x.mens_apparel}"}

@womens_stores = Store.where("womens_apparel = true AND annual_revenue < '1000000'")

@womens_stores.each { |x| puts "Name: #{x.name}, Annual Revenue: #{x.annual_revenue}, Women's Store: #{x.womens_apparel}"}