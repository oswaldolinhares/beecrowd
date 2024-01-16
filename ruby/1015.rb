# Problem 1015

xy1 = gets.split
x1 = xy1[0].to_f
y1 = xy1[1].to_f

xy2 = gets.split
x2 = xy2[0].to_f
y2 = xy2[1].to_f

distance = Math.sqrt(((x2 - x1) ** 2) +((y2-y1) ** 2))

puts '%.4f' % distance
