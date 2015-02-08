json.array!(@quizes) do |quize|
  json.extract! quize, :id
  json.url quize_url(quize, format: :json)
end
