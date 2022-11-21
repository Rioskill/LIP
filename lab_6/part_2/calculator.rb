# frozen_string_literal: true

# class used to calculate sin
class Calculator
  def self.member(value)
    Enumerator::Lazy.new(0..Float::INFINITY) do |yielder, val|
      power = 2 * val + 1
      yielder << (val.even? ? 1 : -1) * value**power / Math.gamma(power + 1)
    end
  end

  def self.sin(value)
    members = member(value).take_while { |val| val.abs >= 1e-4 }
    [members.reduce(:+), members.to_a.size]
  end
end
