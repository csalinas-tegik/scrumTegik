json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :name, :type, :active
  json.url sprint_url(sprint, format: :json)
end
