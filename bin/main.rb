#!/usr/bin/env ruby

puts 'Welcome to Tic-Tac-Toe.'

puts 'The game is displayed on a 1-9 grid (top-to-bottom left-to-right).'

player_one = ''

loop do
  puts 'Player 1 choose your Symbol between X and O:'
  player_one = gets.chomp.upcase
  break if %w[X O].include?(player_one)
end

player_two = if player_one == 'X'
               'O'
             else
               'X'
             end

puts "Player one is: \"#{player_one}\". Player two is: \"#{player_two}\""

counter = 0

board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]

loop do
  puts 'Player one. Is your turn. Please make a move (1-9):'

  player_one_selection = gets.chomp.to_i

  if board_cells.include?(player_one_selection) ? true : false
    puts "#{player_one} moves to #{player_one_selection}"
  else
    puts 'Invalid move.' # Checks if the move is valid. If not it iterate again and puts 'Invalid move'.
  end
  # winner = judge.winner?(board, player_one) ? 'player one' : nil
  # Display the new board with the movement.

  counter += 1
  break if counter == 9

  puts 'Player two. Is your turn. Please make a move (1-9):'

  player_two_selection = gets.chomp.to_i

  if board_cells.include?(player_two_selection) ? true : false
    puts "#{player_two} moves to #{player_two_selection}"
  else
    puts 'Invalid move.' # Checks if the move is valid. If not it iterate again and puts 'Invalid move'.
  end
  # winner = judge.winner?(board, player_two) ? 'player two' : nil
  # Display the new board with the movement.

  counter += 1
end

# Display who won or if it was a tie.
