# frozen_string_literal: true

# class containing correct method for lab_5_part_3
class Correcter
  def self.reject_forbidden_words(words)
    words.select { |word| word.match(/\A[a-zA-z0-9]+\Z/) }
  end

  def self.correct(string)
    words = string.split
    selected_words = reject_forbidden_words words
    selected_words.map { |word| word.start_with?(/\d/) ? "_#{word.slice(1..-1)}" : '' }.join ' '
  end
end
