require './player.rb'
require './turn.rb'
require './question.rb'
require './game.rb'

p1 = MathGame::Player.new("Player 1")
p2 = MathGame::Player.new("Player 2")
turn = MathGame::Turn.new(p1, p2)
question = MathGame::Question.new(turn)
game = MathGame::Game.new(question)

game.start