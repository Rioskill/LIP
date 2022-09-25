require 'minitest/autorun'
require_relative 'main.rb'

class CorrectTest < Minitest::Test

    def randomWord size
        (1..size).map { ('a'.ord + rand(26)).chr }.join
    end

    def test_random
        words = (10..1).map { |x| randomWord(x)}.reverse

        result = correct(words.shuffle.join(' '))

        assert words.join(' ') == result
    end
end