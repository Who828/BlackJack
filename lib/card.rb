class Card
attr_reader :suit
attr_reader :rank
    
    def initialize(aSuit, aRank)
        @suit = aSuit
        @rank = aRank
    end
end