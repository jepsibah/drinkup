json.array!(@happy_hours) do |happy_hour|
  json.extract! happy_hour, :id, :id, :place_id, :start_time, :end_time, :day, :deal
  json.url happy_hour_url(happy_hour, format: :json)
end
