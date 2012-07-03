class Deck
  attr_reader :deck
  def initialize
    suit = ['D','H','C','S']
    rank = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']    

    @deck = rank.map { |x| suit.map { |y| "#{x}#{y}" }}.flatten # Create a rank suit pair representing every card in the deck. "DA", "S10", "H4", etc.
  end
end

