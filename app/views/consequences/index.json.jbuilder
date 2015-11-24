json.array!(@consequences) do |consequence|
  json.extract! consequence, :id, :topic_id, :text
  json.url consequence_url(consequence, format: :json)
end
