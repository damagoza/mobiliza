module Api
	class TypeVehicleController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json	

		def create
			respuesta = {'typeVehicle': nil}
			type_vehicle = TypeVehicle.new(:name => params[:name])
			if type_vehicle.save
				respuesta = {'typeVehicle': type_vehicle}
			end			
			render json: respuesta
		end

		def show
			type_vehicle = TypeVehicle.find(params[:id])
			render json: type_vehicle
		end	  

		def all
			render json: TypeVehicle.all
		end

		def default_serializer_options
			{ root: false }
		end		  

	end	
end
