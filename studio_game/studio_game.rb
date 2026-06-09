# AULA 11 - ARRAY PARTY

class Movie
  attr_reader :title, :rank
  attr_writer :title
  attr_accessor :title
  
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

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")

movies = [movie_1, movie_2, movie_3]

puts "\n Before watching:"
puts movies

movies.each do |movie|
  number_rolled = rand(1..6)

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
puts movies

