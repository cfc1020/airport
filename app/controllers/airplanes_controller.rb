class AirplanesController < ApplicationController
  before_action :load_airplane, only: :transfer_state

  def index
    @airplanes = Airplane.all.includes(:airplane_state_transitions)
  end

  def transfer_state
    # TODO: if we received many ids, we will use .each
    # @airplanes.each { |airplane| airplane.transfer_state(params[:state]) }
    @airplane.transfer_state(params[:state])
    # TODO: need to implement a flash messages
    render nothing: true
  end

  private

  def load_airplane
    @airplane = Airplane.find params[:id]
  end
end
