require_relative 'left_shift'
require_relative 'right_shift'
require_relative 'up_shift'
require_relative 'down_shift'

class Game
  include LeftShift
  include RightShift
  include UpShift
  include DownShift

  NEW_PIECES = [2,2,2,2,4] # randomly sample from this

  def initialize
    @board = [ [0,0,0,0],
               [0,0,0,0],
               [0,0,0,0],
               [0,0,0,0], ]
    @changed_row = nil
    @changed_column = nil

    2.times { randomly_fill_empty_space }
  end

  def randomly_fill_empty_space
    rand_row, rand_column = rand(4), rand(4)
    until @board[rand_row][rand_column] == 0
      rand_row, rand_column = rand(4), rand(4)
    end
    @board[rand_row][rand_column] = NEW_PIECES.sample
  end

  def number_of_empty_spaces
    @board.map{|row| row.count(0)}.inject(:+)
  end

end
