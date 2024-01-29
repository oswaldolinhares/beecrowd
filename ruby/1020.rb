DAYS_IN_YEAR = 365
DAYS_IN_MONTH = 30

def calculate_periods(days)
  years = days / DAYS_IN_YEAR
  remaining_days = days % DAYS_IN_YEAR

  months = remaining_days / DAYS_IN_MONTH
  remaining_days %= DAYS_IN_MONTH

  [years, months, remaining_days]
end

def display_time(years, months, days)
  puts "#{years} ano(s)"
  puts "#{months} mes(es)"
  puts "#{days} dia(s)"
end

total_days = gets.to_i
years, months, days = calculate_periods(total_days)
display_time(years, months, days)
