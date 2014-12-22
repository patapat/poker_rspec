require 'rspec'
require 'card'

describe Card do

  context "#initialize" do

    it "should be created with a suit and a value" do
      new_card = Card.new(:spades, :ace)

      expect(new_card.suit).to eq(:spades)
      expect(new_card.value).to eq(:ace)
    end

    it "should return suit and card value" do
      new_card = Card.new(:hearts, :jack)

      expect(new_card.suit_value).to eq(3)
      expect(new_card.card_value).to eq(11)
    end
  end

  context ""

end
