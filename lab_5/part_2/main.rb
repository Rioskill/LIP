# frozen_string_literal: true

def count_students strings
  groups = strings.map { |string| string.split[0] }

  result = Hash.new { |hash, key| hash[key] = groups.count(key) }

  groups.uniq.each { |group| result[group]}

  result
end
