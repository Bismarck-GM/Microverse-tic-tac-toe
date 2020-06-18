#!/usr/bin/env ruby
require './lib/player.rb'
require './lib/board.rb'
require './lib/the_judge.rb'

def draw(board)
  puts "#{board.cells[0]} #{board.cells[1]} #{board.cells[2]}"
  puts "#{board.cells[3]} #{board.cells[4]} #{board.cells[5]}"
  puts "#{board.cells[6]} #{board.cells[7]} #{board.cells[8]}"
end

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

draw(board)

loop do
  puts 'Player One. Is your turn. Please make a move (1-9):'
  puts 'Invalid selection or occupied space' until player_one.make_move(gets.chomp.to_i, board)

  draw(board)
  counter += 1
  winner = judge.winner?(board, player_one) ? 'player one' : nil
  break if counter == 9 || !winner.nil?

  puts 'Player Two. Is your turn. Please make a move (1-9):'
  puts 'Invalid selection or occupied space' until player_two.make_move(gets.chomp.to_i, board)

  draw(board)
  counter += 1
  winner = judge.winner?(board, player_two) ? 'player two' : nil
  break unless winner.nil?
end

puts winner.nil? ? "It's a draw" : "#{winner} wins!!!"
