json.array!(@hackers) do |hacker|
  json.extract! hacker, :id, :name, :datefrom, :dateto
  json.url hacker_url(hacker, format: :json)
end
