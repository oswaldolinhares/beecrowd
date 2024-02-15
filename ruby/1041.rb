def read_coordinates
  gets.split.map(&:to_f)
end

def identify_location(x, y)
  if x == 0.0 && y == 0.0
    "Origem"
  elsif x == 0.0
    "Eixo Y"
  elsif y == 0.0
    "Eixo X"
  elsif x > 0.0
    y > 0.0 ? "Q1" : "Q4"
  else
    y > 0.0 ? "Q2" : "Q3"
  end
end

def print_location(location)
  puts location
end

x, y = read_coordinates
location = identify_location(x, y)
print_location(location)
