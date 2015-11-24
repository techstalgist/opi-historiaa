json.array!(@level1_topic_groups) do |level1_topic_group|
  json.extract! level1_topic_group, :id, :era_id, :name, :start_year, :end_year
  json.url level1_topic_group_url(level1_topic_group, format: :json)
end
