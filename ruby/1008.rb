# Problem 1008

number = gets.chomp.to_i
worked_hours = gets.chomp.to_i
hourly_pay = gets.chomp.to_f

salary = worked_hours * hourly_pay


puts "NUMBER = #{number}"
puts 'SALARY = U$ %.2f' % salary
