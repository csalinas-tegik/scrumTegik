json.array!(@business_partners) do |business_partner|
  json.extract! business_partner, :id, :name
  json.url business_partner_url(business_partner, format: :json)
end
