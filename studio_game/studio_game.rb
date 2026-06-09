class Player
  attr_accessor :name
  attr_reader :health
  
  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  # Virtual attribute, no need for another instance variable ("@score")
  def score 
    @health + (@name).length
  end  
end

player_1 = Player.new("finn", health = 60)
puts player_1
puts player_1.health

number_rolled = rand(1..6)

case number_rolled
when 1..2
  player_1.drain
  puts "#{player_1.name} got drained! =("
when 3..4
  puts "#{player_1.name} got skipped."
else
  player_1.boost
  puts "#{player_1.name} got boosted! =)"
end

# player_2 = Player.new("lucy", health = 90)
# puts player_2
# puts player_2.health

# player_3 = Player.new("jase")
# puts player_3
# puts player_3.health

# player_4 = Player.new("alex", health = 125)
# puts player_4
# puts player_4.drain
# puts player_4.boost
# puts player_4.score
