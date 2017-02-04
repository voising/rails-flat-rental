require "test_helper"

describe Flat do
  let(:flat) { Flat.new }

  it "must be valid" do
    value(flat).must_be :valid?
  end
end
