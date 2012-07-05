require 'deck.rb'

describe Deck do
  let(:deck) { Deck.new.cards }
  let(:new_deck) { Deck.new }

  context "initialize 52 cards of Deck" do
    it "initializes 52 cards" do
      new_deck.cards.size.should == 52
    end

    it "has these cards in the deck" do
      new_deck.cards.should include("2D","3H","4C")
    end
  end

  context "returns the number of cards remaining in the deck" do
    it "returns the size of cards as 52 on a new deck" do
      new_deck.count.should == 52
    end

    it "returns the size of cards as 45 after 7 cards are removed" do
      7.times { new_deck.random_card }
      new_deck.count.should == 45
    end
  end

  context "takes out a specified card from the deck" do
    it "takes out the specified card from the deck" do
      card_ejected = "2H"
      new_deck.eject_card(card_ejected)
      new_deck.cards.should_not include(card_ejected)
    end

    it "returns the card taken out from the deck" do
      card_ejected = "AH"
      card_out = new_deck.eject_card(card_ejected)
      card_out.should == card_ejected
    end

    it "raises RuntimeError exception if there are no more cards to delete" do
      52.times { new_deck.random_card }
      lambda { new_deck.random_card }.should raise_error(RuntimeError, "No more cards to delete")
    end
  end

  context "gives a random card from the deck" do
    it "takes out a random card from the deck" do
      card = new_deck.random_card
      deck.should include(card)
      new_deck.cards.should_not include(card)
    end
  end
end
