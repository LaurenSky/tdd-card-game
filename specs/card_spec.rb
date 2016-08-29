require_relative 'spec_helper'
require_relative '../card'  #../   alows you to look one folder up from where you are

# type this in tereminal to see test clearly in terminal:   clear; rake

#describe is a minitest keyword
describe Card do
  describe "#initialize" do
    #card = Card.new("suit", 1)
    let(:card) { Card.new(:hearts, "K") }
    #let allows you to set up a variable and it kind of just hangs out until that variable is needed. Allows us to continue running tests

    it "can create a new instance of Card" do
      card.must_be_instance_of(Card)
    end

    it "should have a suit property" do
      card.must_respond_to(:suit)
    end

    it "should have a value property" do
      card.must_respond_to(:value)
    end

    it "suit should have the same value that we set" do
      card.suit.must_equal(:hearts)
    end

    it "value should have the same value that we set" do
      card.value.must_equal("K")
    end

    it "should throw an error when an invalid suit is supplied" do
      proc { Card.new("suit", 2) }.must_raise(ArgumentError)
    end

    it "should be in the valid list of suits" do
      Card::SUITS.must_include(card.suit)
    end

    it "should throw an error when an invalid value is supplied" do
      proc { Card.new(:spades, 1) }.must_raise(ArgumentError)
    end

  end
end
