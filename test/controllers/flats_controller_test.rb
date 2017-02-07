require 'test_helper'

describe FlatsController do
  let(:flat) { flats :one }

  # Controller is JSON only
  before do
    request.headers['Content-Type'] = 'application/json'
  end

  it 'gets index' do
    get flats_url
    value(response).must_be :success?
  end

  it 'creates flat' do
    expect do
      post flats_url, params: { flat: {} }
    end.must_change 'Flat.count'

    must_redirect_to flat_path(Flat.last)
  end

  it 'shows flat' do
    get flat_url(flat)
    value(response).must_be :success?
  end


  it 'updates flat' do
    patch flat_url(flat), params: { flat: {} }
    value(response).must_be :success?
  end

  it 'destroys flat' do
    expect do
      delete flat_url(flat)
    end.must_change 'Flat.count', -1

    must_redirect_to flats_path
  end
end
