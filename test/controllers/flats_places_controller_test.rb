require 'test_helper'

describe FlatsPlacesController do
  let(:flats_place) { flats_places :one }

  it 'gets index' do
    get flats_places_url
    value(response).must_be :success?
  end

  it 'gets new' do
    get new_flats_place_url
    value(response).must_be :success?
  end

  it 'creates flats_place' do
    expect do
      post flats_places_url, params: { flats_place: {} }
    end.must_change 'FlatsPlace.count'

    must_redirect_to flats_place_path(FlatsPlace.last)
  end

  it 'shows flats_place' do
    get flats_place_url(flats_place)
    value(response).must_be :success?
  end

  it 'gets edit' do
    get edit_flats_place_url(flats_place)
    value(response).must_be :success?
  end

  it 'updates flats_place' do
    patch flats_place_url(flats_place), params: { flats_place: {} }
    must_redirect_to flats_place_path(flats_place)
  end

  it 'destroys flats_place' do
    expect do
      delete flats_place_url(flats_place)
    end.must_change 'FlatsPlace.count', -1

    must_redirect_to flats_places_path
  end
end
