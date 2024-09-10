# frozen_string_literal: true

class Player
  attr_accessor :player, :user_input, :player_symbol

  def initialize(player)
    @player = player
    @player_symbol = @player == 1 ? 'x' : 'o'
  end

  def move(board)
    puts "Player #{@player} select number to place - #{@player_symbol}"
    @user_input = gets.chomp.downcase
    @board = board
    @board.each do |array|
      array.map! { |option| option == "| #{@user_input} " ? "| #{@player_symbol} " : option }
    end
  end

end

