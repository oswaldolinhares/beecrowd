def calculate_average(numbers)
  weights = [2, 3, 4, 1]
  total_weighted = numbers.zip(weights).map { |num, weight| num.to_f * weight }.inject(0, :+)
  total_weighted / weights.inject(0, :+)
end

def print_status(average)
  puts "Media: %.1f" % average
  if average >= 7.0
    puts "Aluno aprovado."
  elsif average >= 5.0
    puts "Aluno em exame."
    calculate_exam(average)
  else
    puts "Aluno reprovado."
  end
end

def calculate_exam(average)
  exam_score = gets.chomp.to_f
  puts "Nota do exame: %.1f" % exam_score
  new_average = (average + exam_score) / 2
  if new_average >= 5.0
    puts "Aluno aprovado."
    puts "Media final: %.1f" % new_average
  else
    puts "Aluno reprovado."
  end
end

numbers = gets.split
average = calculate_average(numbers)
print_status(average)
