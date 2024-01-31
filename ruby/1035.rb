def get_input_numbers
  gets.split.map(&:to_i)
end

def valid_numbers?(numbers)
  b_greater_than_c?(numbers) &&
    d_greater_than_a?(numbers) &&
    sum_c_d_greater_than_sum_a_b?(numbers) &&
    c_and_d_positive?(numbers) &&
    a_is_even?(numbers)
end

def b_greater_than_c?(numbers)
  numbers[1] > numbers[2]
end

def d_greater_than_a?(numbers)
  numbers[3] > numbers[0]
end

def sum_c_d_greater_than_sum_a_b?(numbers)
  numbers[2] + numbers[3] > numbers[0] + numbers[1]
end

def c_and_d_positive?(numbers)
  numbers[2].positive? && numbers[3].positive?
end

def a_is_even?(numbers)
  numbers[0].even?
end

def print_result(valid)
  if valid
    puts "Valores aceitos"
  else
    puts "Valores nao aceitos"
  end
end

numbers = get_input_numbers
valid = valid_numbers?(numbers)
print_result(valid)
