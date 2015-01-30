json.array!(@macarons) do |macaron|
  json.extract! macaron, :id, :name, :image_url, :price
  json.url macaron_url(macaron, format: :json)
end
