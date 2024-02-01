def get_numbers
  gets.split.map(&:to_f)
end

def calculate_discriminant(a, b, c)
  (b**2) - (4 * a * c)
end

def valid_discrimnant?(a, discriminant)
  a != 0 && discriminant.positive?
end

def calculate_roots(a, b, discriminant)
  sqrt_discriminant = Math.sqrt(discriminant)
  r1 = ((-b) + sqrt_discriminant) / ( 2 * a)
  r2 = ((-b) - sqrt_discriminant) / ( 2 * a)
  
  [r1, r2]
end

def format_roots(r1, r2)
  puts "R1 = %.5f" % r1  
  puts "R2 = %.5f" % r2
end

def calculate 
  a, b, c = get_numbers
  discriminant = calculate_discriminant(a, b, c)
  
  if valid_discrimnant?(a, discriminant)
    r1, r2 = calculate_roots(a, b, discriminant)
    format_roots(r1,r2)
  else
    puts 'Impossivel calcular'
  end
end

calculate
