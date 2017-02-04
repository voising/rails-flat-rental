require "test_helper"

describe FlatsService do
  let(:flats_service) { FlatsService.new }

  it "must be valid" do
    value(flats_service).must_be :valid?
  end
end
