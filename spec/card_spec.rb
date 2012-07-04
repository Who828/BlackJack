require 'card.rb'

describe Card do
    let(:card)  { Card.new('H', 'A') }
    let(:suits)  { ['H', 'D', 'C', 'S'] }   
    let(:ranks)  { ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K'] }

    context "initialize a card with suit and rank" do
        it "suit should be (H)earts, (D)iamonds, (C)lubs, (S)pades" do
            suits.should include(card.suit)
        end
        it "rank should be (A)ce, 2-10, or (J)ack, (Q)ueen, (K)ing" do
            ranks.should include(card.rank)
        end
    end
end
