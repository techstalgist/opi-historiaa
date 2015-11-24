json.array!(@topics) do |topic|
  json.extract! topic, :id, :level1_topic_group_id, :level2_topic_group_id, :type_id, :name, :start_date, :end_date
  json.url topic_url(topic, format: :json)
end
