original_array = gets.split.map(&:to_i)

sorted_array = original_array.sort

sorted_array.first(3).each { |num| puts num }
puts

original_array.first(3).each { |num| puts num }
