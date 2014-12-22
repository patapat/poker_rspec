require 'rspec'
require 'hand'

describe Hand do
  context "#initialize" do
    it "should take in the deck" do

    end
  end

  context "#get_pair" do
    it "should return one pair of cards" do
      cards = [
        Card.new(:spades, :king),
        Card.new(:spades, :ace),
        Card.new(:hearts, :ace),
        Card.new(:hearts, :six),
        Card.new(:hearts, :five),
        ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.get_pairs).to eq(cards[1..2])
    end

    it "should return two pairs of cards" do
      cards = [
        Card.new(:spades, :king),
        Card.new(:hearts, :king),
        Card.new(:spades, :ace),
        Card.new(:hearts, :ace),
        Card.new(:hearts, :six)
      ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.get_pairs).to eq(cards[0..3])
    end
  end

  context "#three_of_a_kind" do
    it "should return a three-of-a-kind" do
      cards = [
        Card.new(:spades, :king),
        Card.new(:hearts, :king),
        Card.new(:clubs, :king),
        Card.new(:hearts, :ace),
        Card.new(:hearts, :six)
      ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.three_of_a_kind).to eq(cards[0..2])
    end
  end

  context "#four_of_a_kind" do
    it "should return a four-of-a-kind" do
      cards = [
        Card.new(:spades, :king),
        Card.new(:hearts, :king),
        Card.new(:clubs, :king),
        Card.new(:diamonds, :king),
        Card.new(:hearts, :six)
      ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.four_of_a_kind).to eq(cards[0..3])
    end
  end

  context "#full_house?" do
    it "should return true if hand is a full house" do
      cards = [
        Card.new(:spades, :king),
        Card.new(:hearts, :king),
        Card.new(:clubs, :king),
        Card.new(:diamonds, :six),
        Card.new(:hearts, :six)
      ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.full_house?).to eq(true)
    end
  end

  context "#straight" do
    it "should return true if hand is a straight" do
      cards = [
        Card.new(:spades, :king),
        Card.new(:hearts, :queen),
        Card.new(:clubs, :jack),
        Card.new(:diamonds, :ten),
        Card.new(:hearts, :nine)
      ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.straight?).to eq(true)
    end
  end

  context "#flush?" do
    it "should return true if flush" do
      cards = [
        Card.new(:spades, :eight),
        Card.new(:spades, :king),
        Card.new(:spades, :queen),
        Card.new(:spades, :six),
        Card.new(:spades, :seven)
      ]
      new_hand = Hand.new
      new_hand.cards += cards
      expect(new_hand.flush?).to eq(true)
    end
  end
end
