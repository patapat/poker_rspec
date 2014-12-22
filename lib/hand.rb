class Hand

  HAND_STRENGTH = {
    :no_pairs => 0,
    :two_pairs => 1,
    :three_kind => 2,
    :straight => 3,
    :flush => 4,
    :full_house => 5,
    :four_kind => 6,
    :straight_flush => 7,
    :royal_flush => 8
  }

  attr_accessor :cards

  def initialize
    @cards = []
  end

  def hand_strength

  end

  def calc_pair

  end

  def get_multiples
    card_hash = Hash.new(0)

    cards.each do |card|
      card_hash[card.value] += 1
    end

    card_hash
  end

  def get_pairs
    card_hash = get_multiples
    twos = cards.select { |card| card_hash[card.value] == 2 }
  end

  def has_pairs?
    get_pairs.any?
  end

  def three_of_a_kind
    card_hash = get_multiples
    threes = cards.select { |card| card_hash[card.value] == 3 }
  end

  def has_three?
    three_of_a_kind.any?
  end

  def four_of_a_kind
    card_hash = get_multiples
    fours = cards.select { |card| card_hash[card.value] == 4 }
  end

  def has_four?
    four_of_a_kind.any?
  end

  # def full_house
  #
  # end

  def full_house?
    self.has_three? && self.has_pairs?
  end

  def straight?
    all_values = []
    cards.each do |card|
      all_values << card.card_value
    end

    all_values.sort!
    return true if all_values = [2,3,4,5,14] #super elegant
    straight = true
    all_values.each_with_index do |el, i|
      next if i == all_values.length - 1
      straight = false unless el + 1 == all_values[i + 1]
    end

    straight
  end

  def flush?
    all_suits = []
    cards.each do |card|
      all_suits << card.suit_value
    end

    all_suits.uniq.length == 1
  end

  def straight_flush
    self.flush? && self.straight?
  end

  def calc_strength
  end
end
