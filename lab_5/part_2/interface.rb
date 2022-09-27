require_relative 'main.rb'

strings = []

loop do
    string = gets.chomp

    if string.empty?
        break
    end

    strings.push(string)
end

p count_students strings