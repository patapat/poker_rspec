require_relative './card.rb'


class Deck
  attr_reader :all_cards

  def initialize(all_cards = self.fill_deck)
    @all_cards = all_cards
  end


  def fill_deck
    cards = []

    Card::SUIT_STRENGTH.each do |suit|
      Card::CARD_STRENGTH.each do |value|
        cards << Card.new(suit, value)
      end
    end

    cards
  end

  def draw_cards(n)
    return false if n > @all_cards.count
    hand = []

    n.times do
      hand << @all_cards.shift
    end

    hand
  end

  def return_cards(discarded_cards)
    @all_cards += discarded_cards
  end

  def shuffle_deck
    self.all_cards.shuffle!
  end
end
