require "test_helper"

describe Place do
  let(:place) { Place.new }

  it "must be valid" do
    value(place).must_be :valid?
  end
end
