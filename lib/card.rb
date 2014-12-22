
class Card

  SUIT_STRENGTH = {
    :spades => 4,
    :hearts => 3,
    :diamonds => 2,
    :clubs => 1
  }

  CARD_STRENGTH = {
    :two => 2,
    :three => 3,
    :four => 4,
    :five => 5,
    :six => 6,
    :seven => 7,
    :eight => 8,
    :nine => 9,
    :ten => 10,
    :jack => 11,
    :queen => 12,
    :king => 13,
    :ace => 14
   }

  attr_reader :suit, :value, :suit_value, :card_value

  def initialize(suit, value)
    @suit = suit
    @suit_value = SUIT_STRENGTH[suit]
    @value = value
    @card_value = CARD_STRENGTH[value]
  end
end
