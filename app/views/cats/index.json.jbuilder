json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :age
  json.url cat_url(cat, format: :json)
end
