class Board

  attr_accessor :board, :position

  def initialize
    @board = []
    @win_status = false
    x = 1
    3.times do |i|
      @board << Array.new(3) { |i| "| #{x + i} " } + ["|"]
      x += 3
    end
    @board.insert(1, Array.new(13, "-"))
    @board.insert(3, Array.new(13, "-"))
  end

  def get_board
    @board.each do |row|
        puts row.join('')
    end
    puts " "
  end

  def move(player, player_selection)
    @player_selection = player_selection
    @player = player
    @board.each do |array|
        if @player == 1
        array.map! { |option| option == "| #{@player_selection} " ? "| x " : option }
        else
        array.map! { |option| option == "| #{@player_selection} " ? "| o " : option }
        end
    end
  end

end