require 'deck'
require 'byebug'
describe Deck do

  let(:deck) {Deck.new}

  describe "#initialize" do

    it "initializes with a full deck" do
      expect(deck.stack.count).to eq(52)
    end

    it "initializes with cards" do
      expect(deck.stack.all? { |c| c.is_a?(Card)}).to be true
    end

  end

  describe "#shuffle" do
    it "shuffles deck" do
      ordered_stack = deck.stack.dup
      deck.shuffle!
      expect(deck.stack).to_not eq(ordered_stack)
    end
  end

  describe "#deal" do

    context "when the deck is empty" do
      before(:each) {deck.deal(52)}
      it "removes cards from the stack" do
        expect(deck.stack.empty?).to be true
      end

      it "does not deal cards from an empty stack" do
        expect{deck.deal(5)}.to raise_error(StandardError)
      end
    end

    context "when the deck has cards" do
      let(:card) {:sample_card}

      it "deals off the top of the deck" do
        deck.stack.unshift(card)
        expect(deck.deal(1)).to eq([card])
      end

      it "deals the correct amount of cards" do
        hand = deck.deal(10)
        expect(deck.stack.size).to eq(42)
        expect(hand.size).to eq(10)
      end
    end

  end



end
