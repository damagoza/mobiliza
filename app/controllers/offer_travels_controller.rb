class OfferTravelsController < ApplicationController
  before_action :set_offer_travel, only: [:show, :edit, :update, :destroy]

  # GET /offer_travels
  # GET /offer_travels.json
  def index
    @offer_travels = OfferTravel.all
  end

  # GET /offer_travels/1
  # GET /offer_travels/1.json
  def show
  end

  # GET /offer_travels/new
  def new
    @offer_travel = OfferTravel.new
  end

  # GET /offer_travels/1/edit
  def edit
  end

  # POST /offer_travels
  # POST /offer_travels.json
  def create
    @offer_travel = OfferTravel.new(offer_travel_params)

    respond_to do |format|
      if @offer_travel.save
        format.html { redirect_to @offer_travel, notice: 'Offer travel was successfully created.' }
        format.json { render :show, status: :created, location: @offer_travel }
      else
        format.html { render :new }
        format.json { render json: @offer_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_travels/1
  # PATCH/PUT /offer_travels/1.json
  def update
    respond_to do |format|
      if @offer_travel.update(offer_travel_params)
        format.html { redirect_to @offer_travel, notice: 'Offer travel was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_travel }
      else
        format.html { render :edit }
        format.json { render json: @offer_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_travels/1
  # DELETE /offer_travels/1.json
  def destroy
    @offer_travel.destroy
    respond_to do |format|
      format.html { redirect_to offer_travels_url, notice: 'Offer travel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_travel
      @offer_travel = OfferTravel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_travel_params
      params.require(:offer_travel).permit(:user_id, :vechicle_id, :coordenada_start, :coordenada_end, :name_start, :name_end, :state)
    end
end
