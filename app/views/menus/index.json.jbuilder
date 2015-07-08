json.array!(@menus) do |menu|
  json.extract! menu, :id, :name
end
