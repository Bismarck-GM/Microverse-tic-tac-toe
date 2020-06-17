class Board
  attr_accessor :cells
  def initialize
    @cells = Array.new(9)
  end

  def check_valid(symbol, move_command)
    if [1..9].include?(move_command) && @cells[move_command - 1] == nil    
      true
    else
      false
    end
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
