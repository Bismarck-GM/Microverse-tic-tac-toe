#!/usr/bin/env ruby
require './lib/player.rb'
require './lib/board.rb'
require './lib/the_judge.rb'

puts 'Welcome to Tic-Tac-Toe.'

puts 'The game is displayed on a 1-9 grid (top-to-bottom left-to-right).'

player_one = ''

loop do
  puts 'Player 1 choose your Symbol between X and O:'
  player_one = gets.chomp.upcase
  break if %w[X O].include?(player_one)
end

player_two = player_one == 'X' ? 'O' : 'X'

player_one = Player.new(player_one)
player_two = Player.new(player_two)

puts "Player one is: #{player_one.symbol} and Player two is: #{player_two.symbol}"

counter = 0
board = Board.new
judge = Judge.new
winner = nil

board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]

loop do
  puts "#{board_cells[0]} #{board_cells[1]} #{board_cells[2]}"
  puts "#{board_cells[3]} #{board_cells[4]} #{board_cells[5]}"
  puts "#{board_cells[6]} #{board_cells[7]} #{board_cells[8]}"

  puts 'Player one. Is your turn. Please make a move (1-9):'

  player_one_selection = gets.chomp.to_i

  if board_cells.include?(player_one_selection)
    puts "#{player_one} moves to #{player_one_selection}"
  else
    puts 'Invalid move. Position already taken or outside range, Choose again'
  end
  # winner = judge.winner?(board, player_one) ? 'player one' : nil
  # Display the new board with the movement.


  player_two_selection = gets.chomp.to_i

  if board_cells.include?(player_two_selection)
    puts "#{player_two} moves to #{player_two_selection}"
  else
    puts 'Invalid move. Position already taken or outside range, Choose again'
  end
  # winner = judge.winner?(board, player_two) ? 'player two' : nil
  # Display the new board with the movement.

end

puts 'Player 1 wins'
