json.array!(@meals) do |meal|
  json.extract! meal, :id, :menu_id, :fi, :en
  json.url meal_url(meal, format: :json)
end
