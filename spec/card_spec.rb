require 'card'

describe Card do
    let(:card)  { Card.new('H', 'A') }
    let(:suits)  { ['H', 'D', 'C', 'S'] }   
    let(:ranks)  { ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K'] }

    context "initialize a card with suit and rank" do
        it "has a suit either of (H)earts, (D)iamonds, (C)lubs, (S)pades" do
            suits.should include(card.suit)
        end
        it "has a rank of either (A)ce, 2-10, or (J)ack, (Q)ueen, (K)ing" do
            ranks.should include(card.rank)
        end
    end

    context "calculates the value  based on the rank" do
      it "calculates value for 2-10 ranks" do
        Card.new('H',2).value.should == 2
      end

      it "calculates value for (J)ack, (Q)ueen and (K)ing" do
        Card.new('H','J').value.should == 10
        Card.new('H','Q').value.should == 10
      end

      it "calculates the value for (A)ce" do
        Card.new('H','A').value.should == 1
      end
    end
end
