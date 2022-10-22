# frozen_string_literal: true

# class containing count_students method for lab_5_part_2
class StudentCounter

  def self.get_groups  strings
    strings.map { |string| string.split[0] }
  end

  def self.count_students(strings)
    groups = get_groups strings

    result = Hash.new { |hash, key| hash[key] = groups.count(key) }

    groups.uniq.each { |group| result[group] }

    result
  end
end
