json.extract! flats_place, :id, :name, :description, :latitude, :longitude, :addresss
json.url flats_place_url(flats_place, format: :json)