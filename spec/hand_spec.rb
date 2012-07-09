require 'hand'

describe Hand do
  let(:hand) { Hand.new }

  it "initializes a hand with no cards" do
    hand.cards.should be_empty
  end

  it "adds a card to the hand" do
    card = Card.new('H','2')
    hand.add_card(card)
    hand.cards.should include(card)
  end

  context "calculate score" do
    it "calculates the score on non-ace cards" do
      hand.add_card(Card.new("H","2"))
      hand.score.should == 2
    end
    it "scores 11 for (A)ce when current score < 11" do
      hand.add_card(Card.new("H","2"))
      hand.add_card(Card.new("H","8"))
      hand.add_card(Card.new("H","A")) # Added Ace
      hand.score.should == 21
    end
    it "scores 1 for (A)ce when current score >= 11" do
      hand.add_card(Card.new("H","10"))
      hand.add_card(Card.new("D","10"))
      hand.add_card(Card.new("H","A")) # Added Ace
      hand.score.should == 21
    end
  end
end
