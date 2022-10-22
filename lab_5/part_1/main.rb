# frozen_string_literal: true

require_relative 'calculator'

puts 'Input a number'
puts Calculator.calc(gets.to_i)
