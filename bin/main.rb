#!/usr/bin/env ruby
require './lib/player.rb'
require './lib/board.rb'

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

loop do
  puts 'Player One. Is your turn. Please make a move (1-9):'
  puts 'Invalid selection or occupied space' until player_one.make_move(gets.chomp.to_i, board)

  counter += 1
  board.draw
  break if counter == 9

  puts 'Player Two. Is your turn. Please make a move (1-9):'
  puts 'Invalid selection or occupied space' until player_two.make_move(gets.chomp.to_i, board)
  counter += 1
  board.draw
end
