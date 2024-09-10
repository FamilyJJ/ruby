# frozen_string_literal: true

class Player
  attr_accessor :player, :player_symbol, :user_input

  @@selected_options = []
  POSSIBLE_OPTIONS = %w[1 2 3 4 5 6 7 8 9].freeze

  def initialize(player)
    @player = player
    @player_symbol = @player == 1 ? 'x' : 'o'
  end

  def move(board)

    loop do
      puts "Player #{@player} select number to place - #{@player_symbol}"
      @user_input = gets.chomp.downcase
      if !POSSIBLE_OPTIONS.include?(@user_input)
        puts "\nWrong option Try again"
      elsif @@selected_options.include?(@user_input)
        puts "\nOption already taken. Try again."
      else
        @@selected_options.append(@user_input)
        break
      end
    end

    board.each do |array|
      array.map! { |option| option == "| #{@user_input} " ? "| #{@player_symbol} " : option }
    end
  end

end
