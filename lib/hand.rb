require 'card'

class Hand
attr_reader :cards

  def initialize
    @cards = []
  end

  def add_card(card)
    cards.push(card)
  end

  def score
    sum = 0
    cards.each { |card| sum += card.value(sum) }
    sum
  end
end
