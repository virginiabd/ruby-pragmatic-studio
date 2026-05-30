# AULA 5 - SELF
# Métodos são sempre chamados em um objeto. Este objeto, no entanto, nem sempre está evidente.
# O 'puts' é um método. Mas ele atua em que objeto?
# No exemplo:

title = "Ghostbusters"

rank = 9

puts "#{title} has a rank of #{rank}"

# A string é um argumento do método puts. Podemos colocar um parênteses:

puts("#{title} has a rank of #{rank}")

# Mas eles são comumente omitidos. Ainda não respondemos à questão: para qual objeto é chamado o método puts; isto é, o que vem "à esquerda do ponto"?
# Sempre que não houver um receptor explícito no lado esquerdo do ponto, um receptor implícito ou objeto padrão é usado, e esse objeto é referenciado por uma VARIÁVEL chamada "self". Então, é como se usássemos explicitamente self como o receptor da chamada do método puts:

self.puts("#{title} has a rank of #{rank}")

# Em resumo: todo o método é aplicado em um objeto, mesmo que ele não esteja visível. 
