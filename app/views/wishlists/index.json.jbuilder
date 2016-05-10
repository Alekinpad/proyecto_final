json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :type, :name, :icon, :user_id
  json.url wishlist_url(wishlist, format: :json)
end
