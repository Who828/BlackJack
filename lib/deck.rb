require 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def init
    suit = ['H','C','S','D']
    rank = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']
    suit.each do |i|
      rank.each do |j|
        cards.push(Card.new(i,j))
      end
    end
  end

  def count
    cards.size
  end

  def eject_card(card)
    raise "No more cards to delete" if count < 1
    cards.delete(card)
  end

  def random_card
    random_card = cards.sample
    eject_card(random_card)
  end
end

