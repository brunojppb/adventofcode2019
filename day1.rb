require 'net/http'

file = File.open("day1_input.txt")
input_list = file.readlines.map(&:chomp)
result = input_list.map { |n| (n.to_i / 3).floor - 2 }.inject(0){ |acc, x| acc + x }
puts "the sum of the fuel requirements is #{result}"