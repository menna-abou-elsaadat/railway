json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :train_id, :price
  json.url ticket_url(ticket, format: :json)
end
