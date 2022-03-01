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
    # add to fix property id problem 22/3/2-01
    @property = Property.find(params[:id])
    # ---

  end

  def create
    #@customer = Customer.new(customer_params)
    # @property = Property.last
     # add to fix property id problem 22/3/2-01
    @customer = Customer.new(name: customer_params['name'], mail: customer_params['mail'], specialist_id: customer_params['specialist_id'])
    @property = Property.find(customer_params['property_id'])
    # --- 22/3/2-01
    respond_to do |format|
      if @customer.save
         @property.customer_id = @customer.id
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
    # params.require(:customer).permit( :name, :mail, :specialist_id)
    # add to fix property id problem 22/3/2-01
    params.require(:customer).permit( :name, :mail, :specialist_id, :property_id)
    # --- 22/3/2-01
  end
end
