require_relative 'main.rb'

puts 'Input 2 numbers split by space'

a, b = gets.split.map(&:to_i)

puts calc(a, b)