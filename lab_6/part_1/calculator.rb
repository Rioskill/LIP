# frozen_string_literal: true

# class used to calculate sin
class Calculator
  def self.nth_member(value, order)
    power = 2 * order + 1
    (order.even? ? 1 : -1) * value**power / Math.gamma(power + 1)
  end

  def self.sin(value)
    order = 0
    result = 0

    loop do
      current = nth_member(value, order)

      break if current.abs <= 1e-3

      result += current

      order += 1
    end

    [result, order + 1]
  end
end
