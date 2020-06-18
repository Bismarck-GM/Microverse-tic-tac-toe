#!/usr/bin/env ruby

puts 'Welcome to Tic-Tac-Toe.'

puts 'The game is displayed on a 1-9 grid (top-to-bottom left-to-right).'

player_one = ''

loop do
  puts 'Player 1 choose your Symbol between X and O:'
  player_one = gets.chomp.upcase
  break if %w[X O].include?(player_one)
end

player_two = player_one == 'X' ? 'O' : 'X'

puts "Player one is: #{player_one} and Player two is: #{player_two}"

board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
counter = 0
current_player = player_one

loop do
  puts "#{board_cells[0]} #{board_cells[1]} #{board_cells[2]}"
  puts "#{board_cells[3]} #{board_cells[4]} #{board_cells[5]}"
  puts "#{board_cells[6]} #{board_cells[7]} #{board_cells[8]}"

  puts "#{current_player}. Is your turn. Please make a move (1-9):"
  puts 'Invalid selection or occupied space' until board_cells.include?(current_player_selection = gets.chomp.to_i)
  puts "#{current_player} moves to #{current_player_selection}"

  counter += 1
  current_player = current_player == player_one ? player_two : player_one

  break if counter == 9 || current_player.winner?
end

puts 'Player 1 wins'
