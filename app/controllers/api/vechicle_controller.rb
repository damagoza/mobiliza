module Api
	class VechicleController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json

		def vechicle_for_user
			vehicles = Vechicle.where(:user_id => params[:id])
			render json: vehicles
		end	

		def create
			respuesta = {'vechicle': nil}
			vehicle = Vechicle.new(:user_id => params[:user_id], :type_vehicle_id => params[:type_vehicle_id], :model => params[:model])
			if vehicle.save
				respuesta = {'vehicle': vehicle}
			end			
			render json: respuesta
		end

		def show
			vehicle = Vechicle.find(params[:id])
			render json: vehicle
		end	  

		def all
			render json: Vechicle.all
		end

		def default_serializer_options
			{ root: false }
		end		  

	end	
end

