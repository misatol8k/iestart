class PropertyController < ApplicationController
  before_action :set_property, only: %i[ show destroy ]
  
  def index
    @property = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: "Property was successfully created." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end
  private
  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:type, :trader)
  end
end
