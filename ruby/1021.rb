def calculate_notes_and_coin(amount, denominations)
  notes_and_coins = {}

  denominations.each do |value|
    count = (amount / value).to_i
    amount -= count * value
    amount = amount.round(2)
    notes_and_coins[value] = count
  end

  notes_and_coins
end

amount = gets.to_f

denominations = [100.00, 50.00, 20.00, 10.00, 5.00, 2.00, 1.00, 0.50, 0.25, 0.10, 0.05, 0.01] 
notes_and_coins = calculate_notes_and_coin(amount, denominations)

puts "NOTAS:"
notes_and_coins.each do |value, count|
  puts "#{count} nota(s) de R$ #{'%.2f' % value}" if value >= 2
end

puts "MOEDAS:"
notes_and_coins.each do |value, count|
  puts "#{count} moeda(s) de R$ #{'%.2f' % value}" if value < 2
end
