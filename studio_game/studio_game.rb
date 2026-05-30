# AULA 6 - MAKING METHODS
# O Ruby possui seus próprios métodos, mas não precisamos nos limitar a eles. Podemos criar nossos próprios métodos. Eles nos ajudam a automatizar tarefas.

def movie_info(title, rank)
 "#{title} has a rank of #{rank}" 
end

# Em Ruby, os nomes dos métodos estão todos em letras minúsculas; e separamos as palavras com sublinhados. Sempre terminamos a definição do método com a palavra-chave "end". Métodos podem ter ou não argumentos.
# Em vez de por o método "puts" dentro do nosso novo método, podemos imprimir o próprio método. O método é aplicado, implicitamente, no objeto "self", como vimos na última aula. Não precisamos digitá-lo.
# Em Ruby, não precisamos retornar explicitamente um valor do método (com um "return"). Nesse caso, ao chamar o método, ele retornará sempre o valor da última expressão avaliada.
# Ao chamar o método, que será aplicado em um objeto (mesmo que implícito, como no caso do "self"), precisamos passar seus argumentos, caso existam. O método pode ter valores padrão, de modo que, caso os argumentos não sejam passados, o valor definido como padrão será utilizado como argumento. Os valores dos parâmetros padrão podem ser derivados dos valores dos parâmetros anteriores.
# De modo geral, os parâmetros precisam ser passados na ordem. Caso haja muitos argumentos, eles podem ser passados por meio de palavras-chave, não necessariamente na mesma ordem.

def movie_info(title:, rank:)
 "#{title} has a rank of #{rank}" 
end

puts movie_info(rank: 10, title: "Hereditary")

def movie_info(title:, rank: title.length/2)
 "#{title} has a rank of #{rank}"
end

puts movie_info(title: "Hereditary")
