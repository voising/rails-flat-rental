json.extract! flat, :id, :title, :description, :map_description, :address, :latitude, :longitude
json.url flat_url(flat, format: :json)