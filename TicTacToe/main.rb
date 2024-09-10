# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/players'
require_relative 'lib/gameplay'

player_one = Player.new(1)
player_two = Player.new(2)
game = GamePlay.new
game_board = Board.new
game_board.display_board

loop do
  #First player move
  player_one.move(game_board.board)
  game_board.display_board
  break if game.win(game_board.board, player_one.player)
  break if game.tie(game_board.board)

  #Second player move
  player_two.move(game_board.board)
  game_board.display_board
  break if game.win(game_board.board, player_two.player)
  break if game.tie(game_board.board)

end
