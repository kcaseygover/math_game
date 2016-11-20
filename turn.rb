class MathGame
  class Turn

    attr_reader :count, :player1, :player2

    def initialize (player1, player2)
      @player1 = player1
      @player2 = player2
      @count = 1
    end

    def counting
      @count += 1
    end

    def player
      if @count % 2 != 0
        @player1
      else
        @player2
      end
    end
  end
end
