# Uma classe é utilizada para a criação e alteração de vários objetos.
# Não queremos criar objetos, apenas queremos um conjunto de dados.
# Para isso, utiliza-se o módulo.

module Snackbar
  Snack = Data.define(:name, :price)

  SNACKS = [
    Snack.new("popcorn", 3),
    Snack.new("candy", 1),
    Snack.new("nachos", 4),
    Snack.new("pretzels", 2)
  ]

# Módulos também podem ter seus próprios métodos.
# Self obrigatório, pois não podemos criar instâncias (objetos) num módulo.

  def self.random_snack
    SNACKS.sample
  end
end
