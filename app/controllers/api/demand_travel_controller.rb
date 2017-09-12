module Api
	class DemandTravelController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json	

		def create
			respuesta = {'demandTravel': nil}
			demand_travel = DemandTravel.new(:user_id => params[:user_id], :offer_travel_id => params[:offer_travel_id], :accept => params[:accept], :state => params[:state])
			if demand_travel.save
				respuesta = {'demandTravel': demand_travel}
			end			
			render json: respuesta
		end

		def show
			demand_travel = DemandTravel.find(params[:id])
			render json: demand_travel
		end	  

		def all
			render json: DemandTravel.all
		end

		def default_serializer_options
			{ root: false }
		end		  

	end	
end
