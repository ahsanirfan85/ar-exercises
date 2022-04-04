require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum('annual_revenue')
store_count = Store.count
rich_stores = Store.where("annual_revenue > 1000000").count

puts "Total Revenue: #{total_revenue}"
puts "Total Stores: #{store_count}"
puts "Average Revenue Per Stores: #{total_revenue / store_count}"
puts "# of Stores With Revenue > $1M: #{rich_stores}"