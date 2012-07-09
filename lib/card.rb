class Card
attr_reader :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

    def value
      return 1 if rank == "A"
      return 10 if /#{rank}/ =~ 'JQK'
      @rank.to_i
    end
end
