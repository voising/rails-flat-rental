require "test_helper"

describe BedsRoom do
  let(:beds_room) { BedsRoom.new }

  it "must be valid" do
    value(beds_room).must_be :valid?
  end
end
