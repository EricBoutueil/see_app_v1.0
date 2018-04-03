class HarboursController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]


  def index
    @harbours = policy_scope(Harbour)

  # binding.pry

    @selected_harbours = []
    if (params[:name])
      params[:name].each do |harbour|
        @selected_harbours << @harbours.where(name: harbour).first
      end
    end

    # binding.pry

# http://localhost:3000/harbours?name%5B%5D=bastia&name%5B%5D=bayonne&_=1522768541831

    if @selected_harbours == []
      @features = @harbours.map do |harbour|
        {
          "type": "Feature", #1 feature ~ 1 harbour where (movements.filter).sum
          "properties": {
            "country": harbour.country,
            "name": harbour.name,
            "address": harbour.address,
            "totvol": 123123 # harbour.movements.types.where(flow: flow, code: code) # total sum to calculate
          },
          "geometry": {
            "type": "Point",
            "coordinates": [harbour.longitude, harbour.latitude]
          },
          "id": harbour.id
        }
      end
    else
      @features = @selected_harbours.map do |harbour|
        {
          "type": "Feature", #1 feature ~ 1 harbour where (movements.filter).sum
          "properties": {
            "country": harbour.country,
            "name": harbour.name,
            "address": harbour.address,
            "totvol": 123123 # harbour.movements.types.where(flow: flow, code: code) # total sum to calculate
          },
          "geometry": {
            "type": "Point",
            "coordinates": [harbour.longitude, harbour.latitude]
          },
          "id": harbour.id
        }
      end
    end

    @geojson =
      {
        "type": "FeatureCollection",
        "features": @features
      }

    respond_to do |format|
      format.html
      format.js  # <-- will render `app/views/harbours/index.js.erb`
    end

  end
end
