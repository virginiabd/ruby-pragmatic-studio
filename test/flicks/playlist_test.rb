require "minitest/autorun"
require "minitest/mock"
require_relative "../../lib/flicks/movie"
require_relative "../../lib/flicks/playlist"

class PlaylistTest < Minitest::Test

  # Testes são independentes
  # Método que permite compartilhamento de variáveis entre os testes (note o "@")
  # Este método é chamado automaticamente
  def setup
    @playlist = Playlist.new("Gonzo")

    @movie_1 = Movie.new("A", 10)
    @movie_2 = Movie.new("B", 9)

    # Guarda a saída em vez de imprimir
    $stdout = StringIO.new
  end

  def test_has_no_movies_initially
    assert_empty @playlist.movies
  end

  def test_add_movies
    @playlist.add_movie(@movie_1)
    @playlist.add_movie(@movie_2)

    refute_empty @playlist.movies
    assert_equal [@movie_1, @movie_2], @playlist.movies
  end

  def test_high_number_rolled_gives_movie_a_thumbs_up
    @playlist.add_movie(@movie_1)

    # Método para substituir um método!
    @playlist.stub(:roll_die, 6) do
      @playlist.play()

      assert_equal 11, @movie_1.rank
    end
  end

  def test_low_number_rolled_gives_movie_a_thumbs_down
    @playlist.add_movie(@movie_1)

    # Método para substituir um método!
    @playlist.stub(:roll_die, 1) do
      @playlist.play()

      assert_equal 9, @movie_1.rank
    end
  end
end
