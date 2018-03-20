class MovementsController < ApplicationController

  def index
    @movements = Movement.all
    if (params[:harbour])
      @movements = @movements.where(harbour: params[:harbour])
    end
    if (params[:type])
      @movements = @movements.where(type: params[:type])
    end
  end
end
