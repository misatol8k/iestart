class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show destroy ]
  before_action :set_property, only: %i[ create ]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    @specialists = Specialist.all
    # @consultation_matters = ConsultationMatter.all
    # @specialist = Specialist.find(params[:id])
  end

  def create
# binding.irb
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        @property.customer_id = @customer.id
binding.irb
        ContactMailer.contact_mail(@customer).deliver

        format.html { redirect_to "/properties/new", notice: "Property was successfully created." }
        format.json { render :new, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
binding.irb
    @specialist = Specialist.find_by(id: @customer.specialist_id)
    @property = Property.find_by(customer_id: @customer.id)
    # @consultation_detail = Consultation_detail.find(params[:id])
  end

  private
  def set_customer
    @customer = Customer.find(params[:id])
  end

  def set_property
    # @property = Property.find(params[:id])
    @property = Property.last
  end

  def customer_params
    params.require(:customer).permit( :name, :mail)
  end
end
