class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_client, only: %i[ show edit update destroy ]

  # GET /clients or /clients.json
  def index
    @q = Client.ransack(params[:q])
    @clients = @q.result
  end

  # GET /clients/1 or /clients/1.json
  def show
  end

  def preview
    @client = Client.find_by(id: params[:client]) 
    @services = Service.where(client_id: @client.id, month: params[:month], year: params[:year])
    @tax = 13
    @sub_total = 0
    @services.each do |service|
      @sub_total += (service.rate * service.active_users)
    end
    @sub_total = @sub_total.round(2)
    @tax_amount = ((@sub_total * @tax) / 100).round(2) 
    @total = (@sub_total + @tax_amount).round(2)
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients or /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to root_path, notice: "Client was successfully created." }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1 or /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to root_path, notice: "Client was successfully updated." }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1 or /clients/1.json
  def destroy
    @client.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def send_mail
    client = Client.find(params[:client])
    ServiceMailer.with(client: client.id).send_email.deliver_later
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:name, :email, :owner, :address, :state, :total_customers)
    end
end
