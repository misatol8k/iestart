class CustomersController < ApplicationController
  def index
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
  end

  private

  def customer_params
    params.require(:customer).permit( :name, :mail)
  end
end
