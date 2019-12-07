require 'net/http'

# Advent of Code 2019
# Day 1: https://adventofcode.com/2019/day/1

def compute_fuel(mass)
  (mass.to_i / 3).floor - 2
end

# Part 1
file = File.open("day1_input.txt")
input_list = file.readlines.map(&:chomp)
result = input_list.map { |n| compute_fuel(n) }.inject(0){ |acc, x| acc + x }
puts "the sum of the fuel requirements is #{result}"

# part 2
def compute_fuel_recursive(mass)
  fuel = compute_fuel(mass)
  if fuel <= 0
    0
  else
    compute_fuel_recursive(fuel) + fuel
  end
end

result = input_list.map { |n| compute_fuel_recursive(n) }.inject(0) { |acc, x| acc + x }
puts "the sum of the fuel requirements for all of the modules is #{result}"
