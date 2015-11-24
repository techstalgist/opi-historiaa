json.array!(@key_points) do |key_point|
  json.extract! key_point, :id, :topic_id, :text
  json.url key_point_url(key_point, format: :json)
end
