require 'hand.rb'

describe Hand do
  let(:hand) { Hand.new }

  context "initialize with cards" do
    it "should have no cards" do
      hand.cards.should be_empty
    end
  end

  context "peform these oprations" do
    it "should be able to add a card" do
      hand.add_card("1H")
      hand.cards.should include("1H")
    end

    it "should be able to calculate the score" do
      hand.add_card("2H")
      hand.add_card("3H")
      hand.score.should == 5
    end
  end 
end
