class SpecialistsController < ApplicationController
  def index
    @specialists = Specialist.all
  end

  def show
    @specialist = Specialist.find(params[:id])
    # @customer = Customer.new
    # render template: "customers/new"
  end
end
