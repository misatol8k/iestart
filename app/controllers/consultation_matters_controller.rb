class ConsultationMattersController < ApplicationController
  before_action :set_consultation_matter, only: %i[ show destroy ]

  def index
    @consultation_matters = ConsultationMatter.all
  end

  def new
    @consultation_matter = ConsultationMatter.new
  end

  def create
    @consultation_matter = ConsultationMatter.new(consultation_matter_params)

    respond_to do |format|
      if @consultation_matter.save
        format.html { redirect_to @consultation_matter, notice: "ConsultationMatter was successfully created." }
        format.json { render :show, status: :created, location: @consultation_matter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultation_matter.errors, status: :unprocessable_entity }
      end
    end
  end

  def show

  end

  private
  def set_consultation_matter
    @consultation_matter = ConsultationMatter.find(params[:id])
  end

  def consultation_matter_params
    params.require(:consultation_matter).permit(:id, :item )
  end
end
