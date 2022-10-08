# frozen_string_literal: true

def member(value)
  Enumerator::Lazy.new(0..Float::INFINITY) do |yielder, val|
    power = 2 * val + 1
    yielder << (val.even? ? 1 : -1) * value**power / Math.gamma(power + 1)
  end
end
