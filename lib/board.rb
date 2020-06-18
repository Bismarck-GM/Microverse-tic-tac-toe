class Board
  attr_reader :cells
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def check_valid(move_command)
    @cells.include?(move_command) ? true : false
  end

  def update_board(symbol, move_command)
    @cells[move_command - 1] = symbol
  end
end
