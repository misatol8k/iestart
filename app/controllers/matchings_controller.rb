class MatchingsController < ApplicationController
  def index
    @specialists = Specialist.all
    @specialist = Specialist.find(params[:id])
  end

  # def show
  #   @specialist = Specialist.find(params[:id])
  #   # @specialist = Specialist.find_by(specialist_id: @specialist.id)
  # end
end
