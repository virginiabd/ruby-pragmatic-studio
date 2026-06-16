require_relative "lib/studio_game/player"
require_relative "lib/studio_game/game"

player_1 = Player.new("finn", health = 60)
player_2 = Player.new("lucy", health = 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", health = 125)

game = Game.new("Winner Takes All")
game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.play(3)

player_5 = Player.new("alvin")
player_6 = Player.new("simon")
player_7 = Player.new("theodore")

game_2 = Game.new("Chipmunks")
game_2.add_player(player_5)
game_2.add_player(player_6)
game_2.add_player(player_7)
game_2.play
