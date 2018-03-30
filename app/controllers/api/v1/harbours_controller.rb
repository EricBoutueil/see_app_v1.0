class Api::V1::HarboursController < Api::V1::BaseController

  def index
    @harbours = policy_scope(Harbour)
    @selected_harbours = []
    if (params[:name])
      # @harbours = @harbours.where(name: params[:name]) #simple filter
      @selected_harbours << @harbours.where(name: params[:name]).first #select2
    end
  end

    # if deleted-name

# private

#   def harbour_params
#     params.require(:harbour).permit(:name)
#   end

end
