module Api
	class TravelController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json	

		def create
			respuesta = {'travel': nil}
			travel = Travel.new(:offer_travel_id => params[:offer_travel_id], :demand_travel_id => params[:demand_travel_id], :state => params[:state], :calification_offer => params[:calification_offer], :calification_demand => params[:calification_demand])
			if travel.save
				respuesta = {'demandTravel': travel}
			end			
			render json: respuesta
		end

		def show
			travel = Travel.find(params[:id])
			render json: travel
		end	  

		def all
			render json: Travel.all
		end

		def default_serializer_options
			{ root: false }
		end		  

	end	
end
