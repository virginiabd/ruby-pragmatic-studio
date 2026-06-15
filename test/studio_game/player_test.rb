require "minitest/autorun"
require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test
  def test_has_a_capitalized_name
    player = Player.new("finn", 60)

    assert_equal "Finn", player.name
  end

end
