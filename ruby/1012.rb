# Problem 1012

PI = 3.14159
input = gets.split
a = input[0].to_f
b = input[1].to_f
c = input[2].to_f

puts 'TRIANGULO: %.3f' % ((a * c) / 2)
puts 'CIRCULO: %.3f' % (PI * (c ** 2))
puts 'TRAPEZIO: %.3f' % (((a + b) * c) / 2)
puts 'QUADRADO: %.3f' % (b ** 2)
puts 'RETANGULO: %.3f' % (a * b)
