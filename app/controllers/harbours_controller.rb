class HarboursController < ApplicationController
  def index
    @harbours = Harbour.where.not(latitude: nil, longitude: nil)

    if (params[:harbour])
      @harbours = @harbours.where(name: params[:harbour])
    end
    if (params[:type])
      @harbours.map do |harbour|
        harbour.movements = habour.movements.group(:type).(where(type: params[:type])
      end
    end

    # binding.pry
    @features = @harbours.map do |harbour|
      {
        "type": "Feature", #1 feature ~ 1 harbour where (movements.filter).sum
        "properties": {
          "totvol": harbour.movements.where(code: params[:code], flux: params[:flux]) # total sum to calculate
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
