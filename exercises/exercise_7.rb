require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter the name of the store below:"
user_input = gets
puts "Your input is: #{user_input}"
new_store = Store.new
new_store.name = user_input
puts new_store.valid?
new_store.errors.full_messages.each { |x| puts x}