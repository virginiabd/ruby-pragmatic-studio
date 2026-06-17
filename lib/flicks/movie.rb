class Movie
  attr_accessor :title
  attr_reader :rank

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
  end

  def to_s
    "#{@title} has a rank of #{@rank}: #{@snacks_eaten}"
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end
end

if __FILE__ == $0
  movie = Movie.new("Star Wars", 10)
  puts movie.title
  puts movie.rank
  movie.thumbs_up
  puts movie.rank
  movie.thumbs_down
  puts movie.rank
end
