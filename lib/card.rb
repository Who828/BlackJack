class Card
attr_reader :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

    def value(score = 0)
      return 1 if(score > 10 && rank == "A")
      return 11 if rank == "A"
      return 10 if /#{rank}/ =~ 'JQK'
      @rank.to_i
    end
end
