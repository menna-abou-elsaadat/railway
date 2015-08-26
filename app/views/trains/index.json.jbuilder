json.array!(@trains) do |train|
  json.extract! train, :id, :to, :from, :date, :number_seats, :leaving_time, :arrival_time
  json.url train_url(train, format: :json)
end
