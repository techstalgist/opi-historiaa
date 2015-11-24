json.array!(@causes) do |cause|
  json.extract! cause, :id, :topic_id, :text
  json.url cause_url(cause, format: :json)
end
