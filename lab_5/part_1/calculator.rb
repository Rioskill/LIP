# frozen_string_literal: true

# class containing calc function for lab_5_part_1
class Calculator
  def self.calc(value)
    Math.tan(value**2 * (value - 2) / Math.exp(value))
  end
end
