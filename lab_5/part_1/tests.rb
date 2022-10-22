# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'calculator'

# tests calc method
class CalcTest < Minitest::Test
  def test_sin_of_one
    result = Calculator.calc(1)
    assert_in_delta(result, -0.38542559176909813, 1e-17)
  end

  def test_sin_of_four
    result = Calculator.calc(4)
    assert_in_delta(result, 0.6639225799939713, 1e-17)
  end

  def test_negative
    result = Calculator.calc(-2)
    assert_in_delta(result, 2.268626173928899, 1e-17)
  end
end
