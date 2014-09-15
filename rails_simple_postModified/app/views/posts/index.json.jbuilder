json.array!(@posts) do |post|
  json.extract! post, :id, :name, :eva
  json.url post_url(post, format: :json)
end
