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
player_2 = Player.new("lucy", health = 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", health = 125)

players = [player_1, player_2, player_3, player_4]

puts "Before playing:"
puts players

players.pop
player_5 = Player.new("cole", 75)
players.push(player_5)

players.each do |player|
  number_rolled = rand(1..6)
  case number_rolled
  when 1..2
    player.drain
    puts "\n#{player.name} got drained! =("
  when 3..4
    puts "\n#{player.name} got skipped."
  else
    player.boost
    puts "\n#{player.name} got boosted! =)"
  end
end

puts "\nAfter playing:"
puts players
