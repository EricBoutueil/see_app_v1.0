class HarboursController < ApplicationController
  def index
    @harbours = Harbour.where.not(latitude: nil, longitude: nil)

    # binding.pry
    @features = @harbours.map do |harbour|
      {
        "type": "Feature", #1 feature ~ 1 harbour where (movements.filter).sum
        "properties": {
          "totvol": 12345 # total sum to calculate
        },
        "geometry": {
          "type": "Point",
          "coordinates": [harbour.longitude, harbour.latitude]
        }#,
        #"id": "usc000csx3"
      }
    end

    @geojson =
      {
        "type": "FeatureCollection",
        "features": @features
      }

  end
end
