# AULA 8 - ATTR IS FOR ATTRIBUTE

# Atributos são métodos tão comumente utilizados, como saber o nome das variáveis de instância ou mudar esses nomes, que o Ruby já os automatiza para nós.

class Movie
  attr_reader :title, :rank # Em vez de criar um método para cada variável, utiliza-se o atributo "attr_reader", que simplesmente retorna o valor da variável.
  attr_writer :title
  attr_accessor :title # Usamos quando queremos que um atributo seja tanto legível quanto gravável.
  
  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end
end
