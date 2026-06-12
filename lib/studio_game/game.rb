class Game
  attr_reader :title, :players

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def roll_die
    rand(1..6)
  end
  
  def play
    puts "\nLet's play #{@title}!"
    puts "\nBefore playing:"
    puts @players

    @players.each do |player|
      number_rolled = roll_die
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
    puts @players
  end
end
