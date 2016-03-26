json.array!(@bicycles) do |bicycle|
  json.extract! bicycle, :id, :info, :gears, :price, :category_id
  json.url bicycle_url(bicycle, format: :json)
end
