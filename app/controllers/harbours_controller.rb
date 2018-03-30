class HarboursController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @harbours = policy_scope(Harbour)
    # respond_to do |format|
    #   format.html
    #   format.js  # <-- will render `app/views/harbours/index.js.erb`
    # end
    # # redirect == router - controller - view
    # # render == view directly
  end

end
