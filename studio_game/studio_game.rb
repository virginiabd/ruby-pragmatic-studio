class Player

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health}"
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end
end

player_1 = Player.new("finn", health = 60)
puts player_1

player_2 = Player.new("lucy", health = 90)
puts player_2

player_3 = Player.new("jase")
puts player_3

player_4 = Player.new("alex", health = 125)
puts player_4
puts player_4.drain
puts player_4.boost
