class Playlist
  attr_reader :name, :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end
  
  def play
    puts "*" * 30
    puts "#{@name}'s playlist:"
    puts "\n Before watching:"
    puts @movies

    @movies.each do |movie|
      number_rolled = roll_die
      case number_rolled
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down!"
      when 3..4
        movie.thumbs_up
        puts "#{movie.title} got skipped."
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up!"
      end
    end
    puts "\n After watching:"
    puts @movies
  end
end
