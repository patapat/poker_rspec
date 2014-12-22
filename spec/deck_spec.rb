require 'rspec'
require 'card'
require 'deck'

describe Deck do
  describe "#initialize" do
    it "should fill itself with cards" do
      new_deck = Deck.new
      expect(new_deck.all_cards.count).to eq(52)
    end
  end

  context "#draw_cards" do

    it "should take n amount of cards" do
      cards = [Card.new(:spades, :king), Card.new(:spades, :ace)]
      deck = Deck.new(cards.dup)
      expect(deck.draw_cards(2)).to eq(cards)
    end

    it "should return false if not enough cards in deck" do
      cards = [Card.new(:spades, :king), Card.new(:spades, :ace)]
      deck = Deck.new(cards.dup)
      expect(deck.draw_cards(3)).to eq(false)
    end
  end

  context "#return_cards" do
    it "should return n amount of cards to the deck" do
      cards = [Card.new(:spades, :king), Card.new(:spades, :ace)]
      deck = Deck.new(cards.dup)
      discarded_cards = [Card.new(:hearts, :jack)]
      deck.return_cards(discarded_cards)
      expect(deck.all_cards).to eq(cards += discarded_cards)
    end

  end

  context "#shuffle_deck" do
    it "should randomize the order of cards in the deck" do
      ordered_deck = Deck.new
      original_deck = ordered_deck.all_cards.dup
      ordered_deck.shuffle_deck
      expect(original_deck).to_not eq(ordered_deck.all_cards)
    end
  end


end
