class HarboursController < ApplicationController
  def index
    @harbours = Harbour.where.not(latitude: nil, longitude: nil)

    @markers = @harbours.map do |harbour|
      {
        lat: harbour.latitude,
        lng: harbour.longitude#,
        # infoWindow: { content: render_to_string(partial: "/harbours/map_box", locals: { harbour: harbour }) }
      }
    end
  end
end
