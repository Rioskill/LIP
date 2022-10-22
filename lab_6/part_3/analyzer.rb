# frozen_string_literal: true

# class containing minmax method
class Analyzer
  def self.minmax(start, finish, &func)
    (start..finish).step(1e-2).map(&func).minmax
  end
end
