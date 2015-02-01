json.array!(@spots) do |spot|
  json.extract! spot, :id, :title, :location, :description
  json.url spot_url(spot, format: :json)
end
