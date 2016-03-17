require 'card'

class Deck
  SMALL_VALUES = *(2..10)
  FACE_VALUES = [:J, :Q, :K, :A]
  ALL_VALUES = SMALL_VALUES + FACE_VALUES
  SUITS = [:♤, :♡, :♢, :♧]

  attr_reader :stack

  def initialize
    @stack = make_deck
  end

  def make_deck
    SUITS.product(ALL_VALUES).map {|suit, val| Card.new(suit, val)}
  end

  def shuffle!
    @stack.shuffle!
  end

  def deal(n)
    dealt_cards = []
    n.times { dealt_cards << @stack.shift }
    raise StandardError if dealt_cards.include?(nil)
    dealt_cards
  end
end
