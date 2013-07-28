json.array!(@entries) do |entry|
  json.extract! entry, :transaction_id, :amount, :source_account_id, :destination_account_id
  json.url entry_url(entry, format: :json)
end
