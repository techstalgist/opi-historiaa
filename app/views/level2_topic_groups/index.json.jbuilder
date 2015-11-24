json.array!(@level2_topic_groups) do |level2_topic_group|
  json.extract! level2_topic_group, :id, :level1_topic_group_id, :name, :start_year, :end_year
  json.url level2_topic_group_url(level2_topic_group, format: :json)
end
