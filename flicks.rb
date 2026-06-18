# NÃO POR A EXTENSÃO ".rb"
require_relative "lib/flicks/movie"
require_relative "lib/flicks/playlist"

movie_1 = Movie.new("goonies", 10)
movie_2 = Movie.new("ghostbusters", 9)
movie_3 = Movie.new("goldfinger")
movie_4 = Movie.new("gremlins", 7)

playlist_1 = Playlist.new("Kermit")
playlist_1.add_movie(movie_1)
playlist_1.add_movie(movie_2)
playlist_1.add_movie(movie_3)
playlist_1.play(2)
playlist_1.print_stats

playlist_2 = Playlist.new("Fozzie")
playlist_2.add_movie(movie_3)
playlist_2.add_movie(movie_4)
playlist_2.play(20)
playlist_2.print_stats
