json.array!(@whishlists) do |whishlist|
  json.extract! whishlist, :id, :type, :name, :icon, :user_id
  json.url whishlist_url(whishlist, format: :json)
end
