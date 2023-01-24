class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /services or /services.json
  def index
    @client = Client.find_by(id: params[:client]) 
    @services = Service.where(client_id: @client.id, month:params[:month], year:params[:year])
    @tax = 13
    @sub_total = 0
    @services.each do |service|
      @sub_total += (service.rate * service.active_users)
    end
    @sub_total = @sub_total.round(2)
    @tax_amount = ((@sub_total * @tax) / 100).round(2) 
    @total = (@sub_total + @tax_amount).round(2) 
    @month = params[:month]
    @year = params[:year]
  end

  # GET /services/1 or /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services or /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to root_path, notice: "Service was successfully created." }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1 or /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_path(client: @service.client.id, month: @service.month, year: @service.year), notice: "Service was successfully updated." }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    @service.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:service_type_id, :client_id, :rate, :active_users, :registered_users)
    end
end
