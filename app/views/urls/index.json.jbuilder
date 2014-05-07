json.array!(@urls) do |url|
  json.extract! url, :id, :menu_id, :fi, :en
  json.url url_url(url, format: :json)
end
