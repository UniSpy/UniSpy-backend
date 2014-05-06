json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :address, :campus, :open
  json.url menu_url(menu, format: :json)
end
