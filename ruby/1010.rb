# Problem 1010

def calculate_total(line)
  parts = line.split
  code = parts[0].to_i
  quantity = parts[1].to_i
  unit_price = parts[2].to_f

  code != 0 ? quantity * unit_price : 0
end

input_a = gets.to_s
input_b = gets.to_s

total_a = calculate_total(input_a)
total_b = calculate_total(input_b)
total = total_a + total_b

puts 'VALOR A PAGAR: R$ %.2f' % total
