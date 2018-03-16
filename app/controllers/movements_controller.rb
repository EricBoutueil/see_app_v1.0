class MovementsController < ApplicationController

  def index
    @movements = Movement.all
    if (params[:port])
      @movements = @movements.where(port: params[:port])
    end
    if (params[:type])
      @movements = @movements.where(type: params[:type])
    end
  end

end
