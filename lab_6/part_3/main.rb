# frozen_string_literal: true

require_relative 'analyzer'

lambda_function = ->(x) { (x - 1) / (x + 2) }

puts Analyzer.minmax(0, 2, &lambda_function)
puts Analyzer.minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }
