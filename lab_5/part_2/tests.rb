# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'student_counter'

# tests count_students method
class CountStudentsTest < Minitest::Test
  def test_empty_string
    assert StudentCounter.count_students([]) == {}
  end

  def test_regular
    students = [
      'ИУ6-31Б Скворцов Никикта',
      'ИУ6-31Б Старжевский Тимофей',
      'ИУ6-35Б Мукосей Филипп'
    ]

    expected_result = { 'ИУ6-31Б' => 2, 'ИУ6-35Б' => 1 }

    assert StudentCounter.count_students(students) == expected_result
  end

  def random_word(size)
    (1..size).map { ('a'.ord + rand(26)).chr }.join
  end

  def test_randomized
    groups = Hash[(1..5).map { [random_word(5), rand(1..10)] }]

    strings = groups.map { |key, value| (1..value).map { |_| key + " #{random_word(5)}" } }.flatten.shuffle

    assert StudentCounter.count_students(strings) == groups
  end
end
