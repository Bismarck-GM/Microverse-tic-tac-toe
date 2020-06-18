class Player
  attr_reader :symbol, :moves
  def initialize(symbol)
    @symbol = symbol
    @moves = []
  end

  def make_move(move, board)
    is_valid = board.check_valid(move)

    board.update_board(@symbol, move) if is_valid

    is_valid
  end
end
