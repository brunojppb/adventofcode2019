# Advent of Code 2019
# Day 2: https://adventofcode.com/2019/day/2

file = File.open("day2_input.txt")
input_list = file.read.split(',').map(&:to_i)
input_list[1] = 12
input_list[2] = 2

i = 0

while i < input_list.size do
  normalized_index = i % 4
  if normalized_index === 0
    break if input_list[i] === 99
    value1 = input_list[input_list[i+1]]
    value2 = input_list[input_list[i+2]]
    position = input_list[i+3]
    if input_list[i] === 1
      input_list[position] = value1 + value2
    elsif input_list[i] === 2
      input_list[position] = value1 * value2
    end
  end
  i += 1
end

puts "The value left at position 0 is #{input_list[0]}"