# Problem 1013

num = gets.split
a = num[0].to_i
b = num[1].to_i
c = num[2].to_i

x = (a + b + (a-b).abs)/2
maior = (x + c+(x-c).abs)/2
puts maior.to_s + ' eh o maior'
