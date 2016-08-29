require_relative 'spec_helper'
require_relative '../card'  #../   alows you to look one folder up from where you are

# type this in tereminal to see test clearly in terminal:   clear; rake

#describe is a minitest keyword
describe Card do
  describe "#initialize" do

    it "can create a new instance of Card" do
      Card.new("suit", 1).must_be_instance_of(Card)
    end

    it "should have a suit property" do
      Card.new("suit", 1).must_respond_to(:suit)
      #or
      #c = Card.new("suit", 1)
      #c.must_respond_to(:suit)
    end

    it "should have a value property" do
      Card.new("suit", 1).must_respond_to(:value)
      #or
      #c = Card.new("suit", 1)
      #c.must_respond_to(:value)
    end

    it "suit should have the same value that we set" do
      Card.new("suit", 1).suit.must_equal("suit")
      # OR
      # c = Card.new("suit", 1)
      # c.suit.must_equal("suit")
    end

    it "value should have the same value that we set" do
      Card.new("suit", 1).value.must_equal(1)
      # OR
      # c = Card.new("suit", 1)
      # c.value.must_equal(1)
    end

  end
end
