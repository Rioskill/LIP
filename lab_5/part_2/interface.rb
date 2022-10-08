# frozen_string_literal: true

require_relative 'main'

strings = []

loop do
  string = gets.chomp
  break if string.empty?

  strings.push(string)
end

p count_students strings
