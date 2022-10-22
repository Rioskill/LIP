# frozen_string_literal: true

require_relative 'calculator'

puts 'Input a number'

input = gets.to_i

puts Calculator.calc(input)
