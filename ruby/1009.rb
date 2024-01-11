# Problem 1009

name = gets.chomp
salary = gets.chomp.to_f
sales = gets.chomp.to_f

total = salary + (sales * 0.15)

puts 'TOTAL = R$ %.2f' % total
