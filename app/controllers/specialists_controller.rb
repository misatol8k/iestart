class SpecialistsController < ApplicationController
  def index
    @specialists = Specialist.all
  end

  def show
    @specialist = Specialist.find(params[:id])
  end
end
