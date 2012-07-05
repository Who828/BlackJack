require 'hand.rb'

describe Hand do
  let(:hand) { Hand.new }

  it "initializes a hand with no cards" do
    hand.cards.should be_empty
  end

  it "adds a card to the hand" do
    hand.add_card("1H")
    hand.cards.should include("1H")
  end

  context "calculate score" do
    it "calculates the score on non-ace cards" do
      hand.add_card("2H")
      hand.add_card("3H")
      hand.score.should == 5
    end
    it "scores 11 for (A)ce when current score < 11" do
      hand.add_card("2H")
      hand.add_card("8S")
      hand.add_card("AH") # Added Ace
      hand.score.should == 21
    end
    it "scores 1 for (A)ce when current score >= 11" do
      hand.add_card("TH")
      hand.add_card("TD")
      hand.add_card("AH") # Added Ace
      hand.score.should == 21
    end
  end
end
