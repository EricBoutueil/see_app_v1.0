class HarboursController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]


  def index
    @harbours = policy_scope(Harbour)

    @selected_harbours = Harbour.filter_by_harbour(params, @harbours)

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
