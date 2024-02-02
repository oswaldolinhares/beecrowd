def get_input
  gets.to_f
end

def check_interval(number)
  case number
  when 0..25
    'Intervalo [0,25]'
  when 25..50
    'Intervalo (25,50]'
  when 50..75
    'Intervalo (50,75]'
  when 75..100
    'Intervalo (75,100]'
  else
    'Fora de intervalo'
  end
end

def display_message(message)
  puts message
end

number = get_input
message = check_interval(number)
display_message(message)
