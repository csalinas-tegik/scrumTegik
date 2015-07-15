json.array!(@works) do |work|
  json.extract! work, :id, :date, :time
  json.url work_url(work, format: :json)
end
