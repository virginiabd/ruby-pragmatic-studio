class Player
  attr_accessor :name
  attr_reader :health, :found_treasures

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def points
    @found_treasures.values.sum
  end

  def to_s
    "I'm #{@name} with a health = #{@health}, points = #{points}, and a score = #{score}."
  end

  def drain
    @health -= 10
  end

  def boost
    @health += 15
  end

  # Virtual attribute, no need for another instance variable ("@score")
  def score
    @health + points
  end

  def self.from_csv(line)
    name, health = line.split(',')
    Player.new(name, health.to_i)
  end

end

if __FILE__ == $0
  player = Player.new("jase")
  puts player.name
  puts player.health
  player.boost
  puts player.health
  player.drain
  puts player.health
end
