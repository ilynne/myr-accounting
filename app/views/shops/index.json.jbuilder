json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :address, :address2, :city, :state, :postcode, :phone, :fax, :email, :description
  json.url shop_url(shop, format: :json)
end
