require 'test_helper'

describe FlatsServicesController do
  let(:flats_service) { flats_services :one }

  it 'gets index' do
    get flats_services_url
    value(response).must_be :success?
  end

  it 'gets new' do
    get new_flats_service_url
    value(response).must_be :success?
  end

  it 'creates flats_service' do
    expect do
      post flats_services_url, params: { flats_service: {} }
    end.must_change 'FlatsService.count'

    must_redirect_to flats_service_path(FlatsService.last)
  end

  it 'shows flats_service' do
    get flats_service_url(flats_service)
    value(response).must_be :success?
  end

  it 'gets edit' do
    get edit_flats_service_url(flats_service)
    value(response).must_be :success?
  end

  it 'updates flats_service' do
    patch flats_service_url(flats_service), params: { flats_service: {} }
    must_redirect_to flats_service_path(flats_service)
  end

  it 'destroys flats_service' do
    expect do
      delete flats_service_url(flats_service)
    end.must_change 'FlatsService.count', -1

    must_redirect_to flats_services_path
  end
end
