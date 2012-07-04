require 'deck.rb'

describe Deck do
  let(:deck) { Deck.new.cards }
  let(:new_deck) { Deck.new }

  context "initialize 52 cards of Deck" do
    it "should initialize 52 cards" do
      new_deck.cards.size.should == 52
    end

    it "should have these cards in the deck" do
      new_deck.cards.should include("2D","3H","4C")
    end
  end

  context "returns the number of cards remaining in the deck" do
    it "should return the size of cards as 52 on a new deck" do
      new_deck.count.should == 52
    end

    it "should return the size of cards as 45 after 7 cards are removed" do
      7.times { new_deck.random_card }
      new_deck.count.should == 45
    end
  end

  context "takes out a specified card from the deck" do
    it "should take out the specified card from the deck and return it" do
      card_ejected = "2H"
      new_deck.eject_card(card_ejected)
      new_deck.cards.should_not include(card_ejected)
    end

    it "should raise an exception if there are no more cards to delete" do
      52.times { new_deck.random_card }
      lambda { new_deck.random_card }.should raise_error(RuntimeError, "No more cards to delete")
    end
  end

  context "gives a random card from the deck" do
    it "should give an random card from the deck" do
      card = new_deck.random_card
      deck.should include(card)
      new_deck.cards.should_not include(card)
    end
  end
end
