require 'card'

  describe Card do
    describe '#initialize' do
      let(:spade) {"spade"}
      let(:queen) {"queen"}
      subject(:card) {Card.new(spade, queen)}

      it "initializes with a suit" do
        expect(card.suit).to eq(spade)
      end

      it "initializes with a value" do
        expect(card.value).to eq(queen)
      end
    end
  end
