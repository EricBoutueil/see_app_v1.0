json.array! @harbours do |harbour|
  json.extract! harbour, :id, :country, :name, :address, :latitude, :longitude
end
