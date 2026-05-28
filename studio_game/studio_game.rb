# AULA 4

# Variáveis e números são objetos e estão sujeitos a métodos.
# Métodos são iniciados por pontos. Podem ser encadeáveis.
# Métodos com exclamação no final alteram a variável original.
# 8.*(2) é igual a 8*2 (atalho). Operações com números chamam métodos "por trás dos panos." 

# Alguns exemplos:

title = "Goonies"
rank = 10

title.length # Length é um método que pode ser chamado para objetos do tipo string. Assim como os a seguir.

title.reverse

title.upcase # Se colocarmos um "!" no fim do método, ele muda a variável.

title.capitalize

title.empty? # Aqui, o ponto de interrogação faz parte do método. Devolve um booleano.

# "Por convenção, os métodos que terminam com um ponto de interrogação retornam um valor booleano, verdadeiro ou falso. Esses métodos são chamados de 'métodos predicados'".

title.center(10)

title.ljust(30, '.')

title.ljust(30, '.').upcase # Concatenação de métodos.

rank.to_f # Método que transforma um inteiro em um float.

rank.to_s # Transforma em string.

# Lembrando: multiplicar por um número chama um método "por trás dos panos".

rank.even?

rank.odd?

# Como saber quais métodos são aplicáveis? Documentação. Nela, vemos quais os métodos e quais os argumentos possíveis.

# EXERÍCIOS

name = "finn"
health = 60

puts "#{name.capitalize} has a health of #{health}"

puts "#{name.upcase} has a health of #{health}"

puts "#{name.capitalize} has a health of #{health}".center(50,"*")

puts "#{name.capitalize.ljust(50, ".")} #{health} health"

name2 = "    \n finn \t  "

puts name2.strip() # Também pode ser "name2.strip", sem os parênteses.

health2 = 123

puts health2.to_s.reverse

puts health2.to_s.reverse.to_i

puts health2.to_s.reverse.to_i**2

puts health2.to_s.reverse.to_i.pow(2)
