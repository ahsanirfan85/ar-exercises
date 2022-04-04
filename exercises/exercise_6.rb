require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
puts @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60).valid?
puts @store1.employees.create(first_name: "Ahsan", last_name: "Irfan", hourly_rate: 45).valid?
puts @store1.employees.create(first_name: "Mazhar", last_name: "Samdani", hourly_rate: 100).valid?

puts @store2.employees.create(first_name: "Badshah", last_name: "Begum", hourly_rate: 60).valid?
puts @store2.employees.create(first_name: "Akbar", last_name: "Badshah", hourly_rate: 45).valid?
puts @store2.employees.create(first_name: "Sultan", last_name: "Ahmad", hourly_rate: 100).valid?