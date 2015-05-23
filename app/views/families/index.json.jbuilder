json.array!(@families) do |family|
  json.extract! family, :id, :lastname
  json.url family_url(family, format: :json)
end
