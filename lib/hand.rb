require 'set'

class Hand
attr_reader :cards

  def initialize
    @cards = Set[]
  end

  def add_card(card)
    @cards.add(card)
  end

  def score
    score = 0
    @cards.each do |i|
      if /#{i[0]}/ =~ '23456789T'
        score += '--23456789T'.index(i[0])
      elsif /#{i[0]}/ =~ 'JQK'
        score += 10
      elsif 'A' == i[0]
        score += 11
      end
    end
    score
  end
end
