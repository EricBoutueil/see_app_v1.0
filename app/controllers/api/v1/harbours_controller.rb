class Api::V1::HarboursController < Api::V1::BaseController
  def index
    @harbours = policy_scope(Harbour)
  end
end
