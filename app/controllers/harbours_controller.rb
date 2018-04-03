class HarboursController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]


  def index
    @harbours = policy_scope(Harbour)

    @selected_harbours = []
    if (params[:name])
      @selected_harbours << @harbours.where(name: params[:name]).first
    end

    # binding.pry
    @features = @selected_harbours.map do |harbour|
      {
        "type": "Feature", #1 feature ~ 1 harbour where (movements.filter).sum
        "properties": {
          "totvol": 123123 # harbour.movements.types.where(flow: flow, code: code) # total sum to calculate
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

    respond_to do |format|
      format.html
      format.js  # <-- will render `app/views/harbours/index.js.erb`
    end

  end
end
