json.array!(@rentals) do |rental|
  json.extract! rental, :id, :start_date, :end_date, :email, :bicycle_id
  json.url rental_url(rental, format: :json)
end
