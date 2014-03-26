json.array!(@places) do |place|
  json.extract! place, :id, :name, :address, :neighborhood, :yelp
  json.url place_url(place, format: :json)
end
