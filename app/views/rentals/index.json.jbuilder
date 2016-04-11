json.array!(@rentals) do |rental|
  json.extract! rental, :id, :email, :bicycle_id
  json.start rental.start_date
  json.end rental.end_date
  json.title rental.bicycle_id
  json.url rental_url(rental)
end
