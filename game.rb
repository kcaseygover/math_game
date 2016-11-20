class MathGame
  class Game
    def initialize (question)
      @question = question
    end

    def gameover
      if @question.turn.player1.lives == 0
        puts "#{@question.turn.player2.name} wins with a score of #{@question.turn.player2.lives}/3"
      else
        puts "#{@question.turn.player1.name} wins with a score of #{@question.turn.player1.lives}/3"
      end
        puts "----- GAME OVER -----"
        puts "Good bye!"
    end

    def start
      while @question.turn.player1.lives != 0 and @question.turn.player2.lives != 0 do
        @question.ques
      end
      gameover
    end
  end
end
