class Movie
  attr_accessor :title
  attr_reader :rank, :snacks_eaten

  def initialize(title, rank = 5)
    @title = title.capitalize
    @rank = rank
    @snacks_eaten = Hash.new(0)
  end

  def add_snack(name, price)
    @snacks_eaten[name] += price
  end

  def to_s
    "#{@title} has a rank of #{@rank}."
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def total_snack_price
    @snacks_eaten.values.sum
  end

  def self.from_csv(line)
    title, rank = line.split(",")
    Movie.new(title, rank.to_i)
  end

  def to_csv
    "#{@title},#{@rank}"
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
