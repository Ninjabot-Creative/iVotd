json.array!(@query_snapshots) do |query_snapshot|
  json.extract! query_snapshot, :id
  json.url query_snapshot_url(query_snapshot, format: :json)
end
