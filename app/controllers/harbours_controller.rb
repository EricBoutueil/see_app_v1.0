class HarboursController < ApplicationController
  def index
    @harbours = Harbour.where.not(latitude: nil, longitude: nil)

    if (params[:name])
      @harbours = @harbours.where(name: params[:name])
    end


    if (params[:date])
      @harbours.map do |harbour|
        flow = harbour.movements.where(flow: params[:flow])
      end
    else
      flow = "tot"
    end
    if (params[:flow])
      @harbours.map do |harbour|
        flow = harbour.movements.where(flow: params[:flow])
      end
    else
      flow = "tot"
    end
    if (params[:code])
      @harbours.map do |harbour|
        code = harbours.movements.where(code: params[:code])
      end
    else
      code = "z"
    end

    # binding.pry
    @features = @harbours.map do |harbour|
      {
        "type": "Feature", #1 feature ~ 1 harbour where (movements.filter).sum
        "properties": {
          "totvol": 123123 # harbour.movements.where(flow: flow, code: code) # total sum to calculate
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
