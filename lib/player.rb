class Player
  def initialize(symbol)
    @symbol = symbol
    @moves = []
  end

  def make_move(move)
    # check if move is valid
    if [1..9].include?(move)
      # store the users move
      @moves.push(move)
      # store on the board
      # want to update the board to display the players symbol

      true
    else
      false
    end
  end
end
