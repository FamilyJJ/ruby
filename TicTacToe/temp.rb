# frozen_string_literal: true
class Main
  require_relative 'lib/board'
  require_relative 'lib/players'
  require_relative 'lib/gameplay'

  def run
    player_one = Player.new(1)
    player_two = Player.new(2)
    game_board = Board.new
    game_board.display_board

    loop do
      user_input = player_action(player_one, game_board)
      make_move(user_input)
      break if GamePlay.win(game_board.board, player_one.player)
      break if GamePlay.tie(game_board.board)

      player_action(player_two, game_board)
      break if check_result.nil?


    end
  end


  def player_action(player, game_board)
    player.move(game_board.board)
    game_board.display_board
  end

  def check_result
    return 'true' if GamePlay.win(game_board.board, player_two.player) || GamePlay.tie(game_board.board)
  end
end

#bundle exec irb
#load "./main.rb"
# Main.new.run
# reload!
#
#
#
# require "./main.rb"
