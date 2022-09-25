require 'minitest/autorun'
require_relative 'main.rb'

class CalcTest < Minitest::Test
    def test_1_1
        result = calc(1, 1)
        assert result == -0.1029207153609719
    end

    def test_4_5
        result = calc(4, 5)
        assert result == -0.960875916920823
    end
end