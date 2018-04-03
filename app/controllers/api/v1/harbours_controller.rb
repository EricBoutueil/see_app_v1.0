class Api::V1::HarboursController < Api::V1::BaseController

  def index
    @harbours = policy_scope(Harbour)
    @selected_harbours = []
    # using select2
    if (params[:name])
      @selected_harbours << @harbours.where(name: params[:name]).first
    end
    # respond_to do |format|
    #   format.json # <-- render `app/views/harbours/index.json.jbuilder`
    #   format.js  # <-- render `app/views/harbours/index.js.erb`
    # end
    # # redirect == router - controller - view
    # # render == view directly
    # if deleted-name
  end

# private

#   def harbour_params
#     params.require(:harbour).permit(:name)
#   end

end
