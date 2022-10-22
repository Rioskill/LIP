# frozen_string_literal: true

require_relative 'student_counter'

strings = []

loop do
  string = gets.chomp
  break if string.empty?

  strings.push(string)
end

puts StudentCounter.count_students strings
