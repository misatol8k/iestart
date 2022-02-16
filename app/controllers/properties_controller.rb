class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show destroy ranking ]

  def index
    @properties = Property.all
  end

  def ranking
    # Calculate scores from specialists and property information.
    @property_scores = Property.where(id: params[:id]).pluck(:newly_built_house, :used_house, :newly_built_condominium, :used_condominium )
    @property_scores = @property_scores.flatten
    @specialist_scores = Specialist.pluck(:newly_built_house, :used_house, :newly_built_condominium, :used_condominium )
    @specialist_scores = @specialist_scores.map{|n| [n, @property_scores].transpose.map{|m| m.inject(:*)}}
    @specialist_scores = @specialist_scores.map(&:sum)
    @specialist_ids = Specialist.pluck(:id)
    @ary = [@specialist_ids, @specialist_scores].transpose
    @new_scores = Hash[*@ary.flatten].sort_by { |_, v| v }.reverse.to_h
    @new_score_ids = @new_scores.keys
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        # format.html { redirect_to "/matchings", notice: "Property was successfully created." }
        # format.json { render :index, status: :created, location: @matching }
        format.html { redirect_to controller: :properties, action: :ranking, id: @property.id, notice: "Property was successfully created." }
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
