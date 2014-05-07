json.array!(@locations) do |location|
  json.extract! location, :id, :menu_id, :lat, :lng
  json.url location_url(location, format: :json)
end
