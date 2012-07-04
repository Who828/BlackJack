require 'hand.rb'

describe Hand do
  let(:hand) { Hand.new }

  context "initialize with cards" do
    it "should have no cards" do
      hand.cards.should be_empty
    end
  end

  context "add a card" do
    it "should be able to add a card" do
      hand.add_card("1H")
      hand.cards.should include("1H")
    end
  end

  context "calculate score" do
    it "should be able to calculate the score" do
      hand.add_card("2H")
      hand.add_card("3H")
      hand.score.should == 5
    end
    it "ace should score 11 when current score < 11" do
      hand.add_card("2H")
      hand.add_card("8S")
      hand.add_card("AH") # Added Ace
      hand.score.should == 21
    end
    it "ace should score 1 when current score >= 11" do
      hand.add_card("TH")
      hand.add_card("TD")
      hand.add_card("AH") # Added Ace
      hand.score.should == 21
    end
  end
end
