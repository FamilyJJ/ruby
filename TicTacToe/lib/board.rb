# frozen_string_literal: true

class Board
  attr_accessor :board, :position

  def initialize
    @board = []
    @win_status = false
    x = 1
    3.times do |_i|
      @board << Array.new(3) { |i| "| #{x + i} " } + ['|']
      x += 3
    end
    @board.insert(1, Array.new(13, '-'))
    @board.insert(3, Array.new(13, '-'))
  end

  def display_board
    puts ' '
    @board.each do |row|
      puts row.join('')
    end
    puts ' '
  end
end
