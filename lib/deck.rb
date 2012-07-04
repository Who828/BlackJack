class Deck
  attr_reader :cards
  def initialize
    suit = ['D','H','C','S']
    rank = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']    

    @cards = rank.map { |x| suit.map { |y| "#{x}#{y}" }}.flatten # Create a rank suit pair representing every card in the deck
  end

  def eject_card(card)
    @cards.delete(card)
  end

  def random_card
    random_card = @cards.sample
    eject_card(random_card)
  end
end

