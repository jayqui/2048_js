require_relative 'left_shift'
require_relative 'right_shift'

class Game
  include LeftShift
  include RightShift

  def initialize
    @changed_row = nil
  end

end
