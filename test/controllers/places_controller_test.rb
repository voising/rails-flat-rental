require 'test_helper'

describe PlacesController do
  let(:place) { places :one }

  it 'gets index' do
    get places_url
    value(response).must_be :success?
  end

  it 'gets new' do
    get new_place_url
    value(response).must_be :success?
  end

  it 'creates place' do
    expect do
      post places_url, params: { place: {} }
    end.must_change 'Place.count'

    must_redirect_to place_path(Place.last)
  end

  it 'shows place' do
    get place_url(place)
    value(response).must_be :success?
  end

  it 'gets edit' do
    get edit_place_url(place)
    value(response).must_be :success?
  end

  it 'updates place' do
    patch place_url(place), params: { place: {} }
    must_redirect_to place_path(place)
  end

  it 'destroys place' do
    expect do
      delete place_url(place)
    end.must_change 'Place.count', -1

    must_redirect_to places_path
  end
end
