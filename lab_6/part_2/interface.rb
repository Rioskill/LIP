# frozen_string_literal: true

require_relative 'main'

input_value = gets.to_f
enum = member(input_value)
p enum.take_while { |value| value.abs >= 1e-4 }.reduce(:+)
