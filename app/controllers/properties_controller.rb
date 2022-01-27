class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show destroy ]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    # @consultation_matters = ConsultationMatter.all
    # @consultation_detail = ConsultationDetail.all
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to "/customers/new", notice: "Property was successfully created." }
        format.json { render :new, status: :created, location: @matching }
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
    params.require(:property).permit(:property_type,:newly_built_house, :used_house, :newly_built_condominium, :used_condominium, :land, :price_and_pepayment, :building_and_structure, :floor_plan, :surrounding_environment, :family_relatives, :other_point, :url, :other, :trader, :price, :prefecture_id)
  end
end
