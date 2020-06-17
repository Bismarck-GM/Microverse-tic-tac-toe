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
  until player_one.make_move(gets.chomp.to_i, board) do
    puts 'Invalid selection or occupied space'
  end

  counter += 1
  board.draw
  break if counter == 9
  
  puts 'Player Two. Is your turn. Please make a move (1-9):'
  until player_two.make_move(gets.chomp.to_i, board) do
    puts 'Invalid selection or occupied space'
  end
  counter += 1
  board.draw

end
# counter = 0

# loop do
#   puts 'Player one. Is your turn. Please make a move (1-9):'

#   player_one_selection = gets.chomp.to_i

#   if player_one_selection >= 1 && player_one_selection <= 9
#     puts "#{player_one} moves to #{player_one_selection}"
#   else
#     puts 'Invalid move.'
#   end
#   counter += 1
#   break if counter == 9

#   puts 'Player two. Is your turn. Please make a move (1-9):'

#   player_two_selection = gets.chomp.to_i

#   if player_two_selection >= 1 && player_two_selection <= 9
#     puts "#{player_two} moves to #{player_two_selection}"
#   else
#     puts 'Invalid move.'
#   end

#   counter += 1
# end
