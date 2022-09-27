# frozen_string_literal: true

def correct(string)
  words = string.split
  selected_words = words.select { |word| word.match(/\A[a-zA-z0-9]+\Z/) }
  selected_words.map { |word| word.start_with?(/\d/) ? "_#{word.slice(1..-1)}" : '' }.join ' '
end

p correct gets.chomp
