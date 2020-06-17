class Player
  attr_reader :symbol, :moves
  def initialize(symbol)
    @symbol = symbol
    @moves = []
  end

  def make_move(move, board)
    is_valid = board.check_valid(move)
    if is_valid
      board.update_board(@symbol, move)
    end
    is_valid
  end
end
