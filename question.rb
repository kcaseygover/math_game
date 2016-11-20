class MathGame
  class Question

    attr_reader :turn

    def initialize (turn)
      @turn = turn
    end

    def ques
      num1 = rand(1..20)
      num2 = rand(1..20)
      player = @turn.player

      puts "----- NEW TURN -----"
      puts "#{player.name}: What does #{num1} plus #{num2} equal?"

      answer = Integer(gets.chomp)

      if answer != (num1 + num2)
        player.lives -= 1
        puts "#{player.name}: Incorrect"
        puts "P1: #{@turn.player1.lives}/3 vs P2: #{@turn.player2.lives}/3"
      else
        puts "#{player.name}: Correct"
      end

      @turn.counting

    end
  end
end