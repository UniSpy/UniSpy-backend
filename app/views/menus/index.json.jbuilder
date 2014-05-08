json.(@menus) do |menu|
  json.name menu.name
  json.address menu.address
  json.campus menu.campus
  json.open menu.open
  json.url menu.url, :fi, :en
  json.location menu.location, :lat, :lng
  json.meals menu.meal, :fi, :en
    end
