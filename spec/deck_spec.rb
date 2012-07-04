require 'deck.rb'

describe Deck do
  let(:deck) { Deck.new.cards }

  context "initialize 52 cards of Deck" do
    it "should initialize 52 cards" do
      Deck.new.cards.size.should == 52
    end
    it "should have these cards in the deck" do
      Deck.new.cards.should include("2D","3H","4C")
    end
  end

  context "gives a random card from the deck" do
    it "should give an random card from the deck" do
      new_deck = Deck.new
      card = new_deck.random_card
      deck.should include(card)
      new_deck.cards.should_not include(card)
    end
  end
end
