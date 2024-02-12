def get_input
  gets.split
end

def check_interval(values)
  case values[0].to_f
  when 1
    total = values[1].to_f * 4
  when 2
    total = values[1].to_f * 4.5
  when 3
    total = values[1].to_f * 5
  when 4
    total = values[1].to_f * 2
  when 5
    total = values[1].to_f * 1.5
  else
    total = values[1].to_f * 0
  end
end

def display_message(total)
  puts "Total: R$ %.2f" % total
end

values = get_input
total = check_interval(values)
display_message(total)
