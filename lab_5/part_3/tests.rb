# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'correcter'

# test for lab5 part 2
class CorrectTest < Minitest::Test
  def random_word(size)
    (1..size).map { ('a'.ord + rand(26)).chr }.join
  end

  def test_random
    words = (10..1).map { |word| randomWord(word) }.reverse

    result = Correcter.correct(words.shuffle.join(' '))

    assert words.join(' ') == result
  end
end
