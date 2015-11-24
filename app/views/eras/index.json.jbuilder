json.array!(@eras) do |era|
  json.extract! era, :id, :name, :start_year, :end_year
  json.url era_url(era, format: :json)
end
