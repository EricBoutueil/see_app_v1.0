class MovementsController < ApplicationController

  def index
    @movements = policy_scope(Movement)

    # other filters

  end
end
