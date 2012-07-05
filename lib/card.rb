class Card
attr_reader :suit, :rank
    
    def initialize(suit, rank, score = 0)
        @suit = suit
        @rank = rank
        @score = score
    end

    def value
      return 1 if(@score > 10 && rank == "A")
      return 11 if rank == "A"
      return 10 if /#{rank}/ =~ 'JQK'
      @rank.to_i
    end
end
