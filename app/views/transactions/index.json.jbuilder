json.array!(@transactions) do |transaction|
  json.extract! transaction, :date, :description
  json.url transaction_url(transaction, format: :json)
end