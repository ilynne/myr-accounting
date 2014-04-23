json.array!(@orders) do |order|
  json.extract! order, :id, :purchaser, :email, :payment_status, :delivery_status
  json.url order_url(order, format: :json)
end
