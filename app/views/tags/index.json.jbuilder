json.array!(@tags) do |tag|
  json.extract! tag, :content
end
