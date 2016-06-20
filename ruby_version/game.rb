require_relative 'left_shift'
require_relative 'right_shift'
require_relative 'up_shift'

class Game
  include LeftShift
  include RightShift
  include UpShift

  NEW_PIECES = [2,2,2,2,4] # randomly sample from this

  def initialize
    @board = [ [0,0,0,0],
               [0,0,0,0],
               [0,0,0,0],
               [0,0,0,0], ]
    @changed_row = nil
    @changed_column = nil
  end

end
