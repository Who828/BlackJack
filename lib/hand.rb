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
    cards.each do |card|
      sum += card.value
      if card.rank == 'A' and sum <= 11
        sum += 10 # Add Bonus score '10' for Ace as Ace will score 11.
      end
    end
    sum
  end
end
