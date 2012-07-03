require 'deck.rb'

describe Deck do
  context "It should initialize 52 cards of Deck" do
    it "should initialize 52 cards" do
      Deck.new.deck.size.should == 52
    end
    it "should have these cards in the deck" do
      Deck.new.deck.should include("2D","3H","4C")
    end
  end
end
