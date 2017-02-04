require "test_helper"

describe Manager do
  let(:manager) { Manager.new }

  it "must be valid" do
    value(manager).must_be :valid?
  end
end
