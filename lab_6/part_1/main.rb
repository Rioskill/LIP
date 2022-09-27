# x = gets.to_i

def nth_member(x, n)
  power = 2 * n + 1
  (n % 2 == 0 ? 1 : -1) * x ** power / Math.gamma(power + 1)
end

n = 0
result = 0

loop do
  current = nth_member(1, n)
  
  if current.abs <= 10**(-3)
    break
  end

  result += current

  n += 1
end

p result