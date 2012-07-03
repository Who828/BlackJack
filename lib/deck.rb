class Deck
  attr_reader :deck
  def initialize
    @deck = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K'].map { |x| ['D','H','C','S'].map { |y| "#{x}#{y}" }}.flatten
  end
end

