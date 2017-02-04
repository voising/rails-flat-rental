require 'test_helper'

describe Bed do
  let(:bed) { Bed.new }

  it 'must be valid' do
    value(bed).must_be :valid?
  end
end
