class CustomersController < ApplicationController
  def index
  end

  def new
    @specialists = Specialist.all
    @consultation_matters = ConsultationMatter.all
    # @specialist = Specialist.find(params[:id])
  end

  def show
  end
end
