class Card
  attr_reader :suit, :value

  SUITS = [
    :hearts,
    :diamonds,
    :clubs,
    :spades
  ]

  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

  def initialize (suit, val)

    if !SUITS.include?(suit)
      raise ArgumentError.new("Invalid Suit")
    end

    if !VALUES.include?(val)
      raise ArgumentError.new("Invalid Value")
    end

    @suit = suit
    @value = val
  end

end
