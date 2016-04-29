json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :photo, :price, :stock, :store_id
  json.url product_url(product, format: :json)
end
