require 'deck'

describe Deck do
  let(:new_deck) { Deck.new }

  it "initializes an array" do
    new_deck.cards.should be_a Array
  end

  context "returns the number of cards remaining in the deck" do
    before(:each) do
      new_deck.init
    end

    it "returns the size of cards as 52 on a new deck" do
      new_deck.count.should == 52
    end

    it "returns the size of cards as 45 after 7 cards are removed" do
      7.times { new_deck.random_card }
      new_deck.count.should == 45
    end
  end

  context "takes out a specified card from the deck" do
    it "raises RuntimeError exception if there are no more cards to delete" do
      new_deck.init
      52.times { new_deck.random_card }
      lambda { new_deck.random_card }.should raise_error(RuntimeError, "No more cards to delete")
    end
  end

  context "gives a random card from the deck" do
    it "takes out a random card from the deck" do
      new_deck.init
      card = new_deck.random_card
      new_deck.cards.should_not include(card)
    end

    it "takes out a valid card from the deck" do
      new_deck.init
      card = new_deck.random_card
      ['H','C','S','D'].should include(card.suit)
      ['A','2','3','4','5','6','7','8','9','10','J','Q','K'].should include(card.rank) 
    end
  end
end
