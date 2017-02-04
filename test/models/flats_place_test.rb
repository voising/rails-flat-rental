require "test_helper"

describe FlatsPlace do
  let(:flats_place) { FlatsPlace.new }

  it "must be valid" do
    value(flats_place).must_be :valid?
  end
end
