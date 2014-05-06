json.array!(@tags) do |tag|
  json.extract! tag, :id, :content
  json.url tag_url(tag, format: :json)
end
