class Deck
  attr_reader :deck
  def initialize
    rank = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']
    suit = ['D','H','C','S']
    @deck = rank.map { |x| suit.map { |y| "#{x}#{y}" }}.flatten
  end
end

