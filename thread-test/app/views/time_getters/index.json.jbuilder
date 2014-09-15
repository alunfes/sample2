json.array!(@time_getters) do |time_getter|
  json.extract! time_getter, :id, :datetime, :html
  json.url time_getter_url(time_getter, format: :json)
end
