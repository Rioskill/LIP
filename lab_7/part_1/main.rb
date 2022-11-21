# frozen_string_literal: true

require_relative 'file_copier'

puts 'Начало копирования'
FileCopier.copy('F.txt', 'G.txt')
puts 'Копирование закончено'
