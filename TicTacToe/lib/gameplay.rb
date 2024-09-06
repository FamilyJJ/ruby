class GamePlay

  def win(board)
    winning_combinations = [
      [board[0][0], board[0][1], board[0][2]],
      [board[2][0], board[2][1], board[2][2]],
      [board[4][0], board[4][1], board[4][2]],
      [board[0][0], board[2][0], board[4][0]],
      [board[0][1], board[2][1], board[4][1]],
      [board[0][2], board[2][2], board[4][2]],
      [board[0][0], board[2][2], board[4][4]],
      [board[0][2], board[2][2], board[4][0]]
    ]
    winning_combinations.any? do |array|
      array.all? { |value| value == "| x " } || array.all? { |value| value == "| o " }
    end
  end

  def tie(board)
    board.all? do |array|
      array.all? { |item| item !~ /\d/ }
    end
  end

end
  