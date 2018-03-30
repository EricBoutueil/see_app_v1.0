# # Simple array - OK
# json.array! @harbours do |harbour|
#   json.extract! harbour, :id, :country, :name, :address, :latitude, :longitude
# end


# ALL harbours if filter empty

json.type "FeatureCollection"
json.features @harbours do |harbour|
  json.type "Feature" #1 feature ~ 1 harbour where (movements.filter).sum
  json.properties do
    json.name "#{harbour.country}"
    json.name "#{harbour.name}"
    json.name "#{harbour.address}"
    json.filteredVol 123123 # harbour.movements.types.where(flow: flow, code: code) # total sum to calculate
  end
  json.geometry do
    json.type "Point"
    json.coordinates [harbour.longitude, harbour.latitude]
  end
  json.id "#{harbour.id}"
end
