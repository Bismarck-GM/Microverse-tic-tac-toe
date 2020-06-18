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

  def draw
    puts "#{@cells[0]} #{@cells[1]} #{@cells[2]}"
    puts "#{@cells[3]} #{@cells[4]} #{@cells[5]}"
    puts "#{@cells[6]} #{@cells[7]} #{@cells[8]}"
  end
end
