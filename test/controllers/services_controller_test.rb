require 'test_helper'

describe ServicesController do
  let(:service) { services :one }

  before do
    request.headers['Content-Type'] = 'application/json'
  end

  it 'gets index' do
    get services_url
    value(response).must_be :success?
  end

  it 'gets new' do
    get new_service_url
    value(response).must_be :success?
  end

  it 'creates service' do
    expect do
      post services_url, params: { service: {} }
    end.must_change 'Service.count'

    must_redirect_to service_path(Service.last)
  end

  it 'shows service' do
    get service_url(service)
    value(response).must_be :success?
  end

  it 'gets edit' do
    get edit_service_url(service)
    value(response).must_be :success?
  end

  it 'updates service' do
    patch service_url(service), params: { service: {} }
    must_redirect_to service_path(service)
  end

  it 'destroys service' do
    expect do
      delete service_url(service)
    end.must_change 'Service.count', -1

    must_redirect_to services_path
  end
end
