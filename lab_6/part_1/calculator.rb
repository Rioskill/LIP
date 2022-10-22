# frozen_string_literal: true

# class used to calculate sin
class Calculator
  def self.nth_member(x, n)
    power = 2 * n + 1
    (n.even? ? 1 : -1) * x**power / Math.gamma(power + 1)
  end

  def self.sin(x)
    n = 0
    result = 0

    loop do
      current = nth_member(x, n)

      break if current.abs <= 1e-3

      result += current

      n += 1
    end

    result
  end
end
