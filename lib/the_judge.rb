class Judge
  attr_reader :winning_combinations

  def initialize
    @winning_combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end

  def winner?(board, player)
    winner = false

    @winning_combinations.each do |combination|
      winner = combination.all? { |index| board.cells[index] == player.symbol }
      break if winner
    end

    winner
  end
end
