# frozen_string_literal: true

def nth_member(x, n)
  power = 2 * n + 1
  (n % 2 == 0 ? 1 : -1) * x ** power / Math.gamma(power + 1)
end

def mySin(x)
  n = 0
  result = 0

  loop do
    current = nth_member(x, n)

    if current.abs <= 1e-3
      break
    end

    result += current

    n += 1
  end

  result
end