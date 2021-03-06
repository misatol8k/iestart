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
    @new_specialist_ids = @new_scores.keys.first(5)
    @best_specialists = Specialist.order_as_specified(id: @new_specialist_ids).first(5)
  end

  def new
    @property = Property.new
    @property.consultation_details.build
    # 6.times { @property.consultation_details.build }
    # @consultation_detail = ConsultationDetail.new
    # @consultation_matters = ConsultationMatter.all
    # @consultation_detail = ConsultationDetail.all
  end

  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        # format.html { redirect_to controller: :properties, action: :ranking, id: @property.id, notice: "Property was successfully created." }
        # format.html { redirect_to "/customers/new", notice: "Property was successfully created." }
        format.html { redirect_to controller: :customers, action: :new, id: @property.id, notice: "Property was successfully created." }
        format.json { render :new, status: :created, location: @property }
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
    params.require(:property).permit(
      :property_type,
      :newly_built_house,
      :used_house,
      :newly_built_condominium,
      :used_condominium,
      :land,
      :price_and_pepayment,
      :building_and_structure,
      :floor_plan,
      :surrounding_environment,
      :family_relatives,
      :other_point,
      :other,
      :trader,
      :price,
      :prefecture_id,
      consultation_details_attributes: [:content]
    )
  end
end
