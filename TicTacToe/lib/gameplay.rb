# frozen_string_literal: true

module GamePlay
  module_function

  def win(board, player)
    winning_combinations = [
      [board[0][0], board[0][1], board[0][2]],
      [board[2][0], board[2][1], board[2][2]],
      [board[4][0], board[4][1], board[4][2]],
      [board[0][0], board[2][0], board[4][0]],
      [board[0][1], board[2][1], board[4][1]],
      [board[0][2], board[2][2], board[4][2]],
      [board[0][0], board[2][1], board[4][2]],
      [board[0][2], board[2][1], board[4][0]]
    ]
    winning_combinations.any? do |array|
      if array.all? { |value| value == '| x ' } || array.all? { |value| value == '| o ' }
        puts "Player #{player} wins the game"
        true
      end
    end
  end

  def tie(board)
    return unless board.all? { |array| array.all? { |item| item !~ /\d/ } }

    puts "It's a tie"
    true
  end
end
