class DemandTravelsController < ApplicationController
  before_action :set_demand_travel, only: [:show, :edit, :update, :destroy]

  # GET /demand_travels
  # GET /demand_travels.json
  def index
    @demand_travels = DemandTravel.all
  end

  # GET /demand_travels/1
  # GET /demand_travels/1.json
  def show
  end

  # GET /demand_travels/new
  def new
    @demand_travel = DemandTravel.new
  end

  # GET /demand_travels/1/edit
  def edit
  end

  # POST /demand_travels
  # POST /demand_travels.json
  def create
    @demand_travel = DemandTravel.new(demand_travel_params)

    respond_to do |format|
      if @demand_travel.save
        format.html { redirect_to @demand_travel, notice: 'Demand travel was successfully created.' }
        format.json { render :show, status: :created, location: @demand_travel }
      else
        format.html { render :new }
        format.json { render json: @demand_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demand_travels/1
  # PATCH/PUT /demand_travels/1.json
  def update
    respond_to do |format|
      if @demand_travel.update(demand_travel_params)
        format.html { redirect_to @demand_travel, notice: 'Demand travel was successfully updated.' }
        format.json { render :show, status: :ok, location: @demand_travel }
      else
        format.html { render :edit }
        format.json { render json: @demand_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demand_travels/1
  # DELETE /demand_travels/1.json
  def destroy
    @demand_travel.destroy
    respond_to do |format|
      format.html { redirect_to demand_travels_url, notice: 'Demand travel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demand_travel
      @demand_travel = DemandTravel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demand_travel_params
      params.require(:demand_travel).permit(:user_id, :offer_travel_id, :accept, :state)
    end
end
