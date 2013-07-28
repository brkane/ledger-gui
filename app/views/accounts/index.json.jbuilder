json.array!(@accounts) do |account|
  json.extract! account, :name
  json.url account_url(account, format: :json)
end