class MatchingsController < ApplicationController
  before_action :set_specialist, only: %i[show ]

  def index
    @specialists = Specialist.all
    # @specialist = Specialist.find(params[:id])
  end

  def show
    # @specialist = Specialist.find(params[:id])
    # @specialist = Specialist.find_by(specialist_id: @specialist.id)
  end

  private
  def set_specialist
    @specialist = Specialist.find(params[:id])
  end
  def specialist_params
    params.require(:specialist).permit(:id)
  end

end
