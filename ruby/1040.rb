def calcular_media(numbers)
  pesos = [2, 3, 4, 1]
  soma_pesos = numbers.zip(pesos).map { |num, peso| num.to_f * peso }.inject(0, :+)
  soma_pesos / pesos.inject(0, :+)
end

def imprimir_status(media)
  puts "Media: %.1f" % media
  if media >= 7.0
    puts "Aluno aprovado."
  elsif media >= 5.0
    puts "Aluno em exame."
    calcular_exame(media)
  else
    puts "Aluno reprovado."
  end
end

def calcular_exame(media)
  exame = gets.chomp.to_f
  puts "Nota do exame: %.1f" % exame
  new_media = (media + exame) / 2
  if new_media >= 5.0
    puts "Aluno aprovado."
    puts "Media final: %.1f" % new_media
  else
    puts "Aluno reprovado."
  end
end

numbers = gets.split
media = calcular_media(numbers)
imprimir_status(media)
