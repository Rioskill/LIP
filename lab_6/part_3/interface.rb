# frozen_string_literal: true

require_relative 'main'

puts minmax(0, 2) { |x| (x - 1) / (x + 2) }
puts minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }

