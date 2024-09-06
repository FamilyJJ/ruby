require_relative 'lib/board.rb'
require_relative 'lib/players.rb'
require_relative 'lib/gameplay.rb'

player_one = Player.new(1)
player_two = Player.new(2)
game = GamePlay.new
game_board = Board.new
game_board.get_board

    loop do
      puts 'Player one select number to place - x'
      @user_input = gets.chomp.downcase
      puts ""
      game_board.move(player_one.player, @user_input)
      selected_options.append(@user_input)
      
      game_board.get_board

      if game.win(game_board.board) == true
        puts "Player #{player_one.player} wins the game"
        break
      end

      if game.tie(game_board.board) == true
        puts "It's a tie"
        break
      end

      puts 'Player two select option to place - o'
      @user_input = gets.chomp.downcase
      puts ""
      game_board.move(player_two.player, @user_input)
      game_board.get_board

      if game.win(game_board.board) == true
        puts "Player #{player_two.player} wins the game"
        break
      end

      if game.tie(game_board.board) == true
        puts "It's a tie"
        break
      end

    end