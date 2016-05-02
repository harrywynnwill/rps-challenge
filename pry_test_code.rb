require './lib/player'
require './lib/game'

player = Player.new("harry")
Game.create(player)
@game=Game.game_in_play

@game.choice("scissors")
@game.player