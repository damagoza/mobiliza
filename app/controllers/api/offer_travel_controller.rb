module Api
	class OfferTravelController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json

		def for_user
			offer_travels = OfferTravel.where(:user_id => params[:user_id])
			render json: offer_travels
		end

		def travel_for_state
			travels = OfferTravel.where(:state => params[:state])
			render json: travels
		end

		def create
			respuesta = {'offerTravel': nil}
			offer_travel = OfferTravel.new(:user_id => params[:user_id], :vechicle_id => params[:vechicle_id], :name_start => params[:name_start], :name_end => params[:name_end], :state => params[:state])
			if offer_travel.save
				respuesta = {'offerTravel': offer_travel}
			end			
			render json: respuesta
		end

		def show
			offer_travel = OfferTravel.find(params[:id])
			render json: offer_travel
		end	  

		def all
			render json: OfferTravel.all
		end

		def default_serializer_options
			{ root: false }
		end		  

	end	
end
