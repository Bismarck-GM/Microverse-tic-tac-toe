#!/usr/bin/env ruby
# require './lib/Player'

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

player_one = Player.new(player_one)
player_two = Player.new(player_two)

puts "Player one is: #{player_one(symbol)}"

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
