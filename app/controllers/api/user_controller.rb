module Api
	class UserController < ApplicationController
		skip_before_filter :verify_authenticity_token
		respond_to :json	

		def show
		user = User.find(params[:id])
		render json: user
		end	  

		def all
		render json: User.all
		end

		def default_serializer_options
			{ root: false }
		end

		def sign_up
			puts "**************peticion de sign_up desde api**************"
			respuesta = {'user': nil}

			if not User.find_by_email(params[:email])

				email 				= params[:email]	
				password 			= params[:password]

				user = User.new(:email => email, :password => password)

				if user.save
					
					if user
						respuesta = {'user': user, 'state': true}
						render json: respuesta
					else
						respuesta = {'user':nil, 'message': 'El usuario se creo, pero no se encontro', 'state': false}
						render json: respuesta
					end
				else
					respuesta = {'user':nil, 'message': "No se ha podido crear el usuario", 'state': false}
					render json: respuesta
				end

			else
				respuesta = {'user':nil, 'message': 'E-mail ya existe en la base de datos', 'state': false}
				render json: respuesta
			end				
		end	

		def sign_in
			respuesta = {'user': nil}
			user = User.find_by_email(params[:email])
			if user				
				if user.valid_password?(params[:password])
					respuesta = {'user': user, 'state': true}
					render json: respuesta
				else
					respuesta = {'user': nil, 'message': "Verifique el password",'state': false}
					render json: respuesta
				end
			else
				respuesta = {'user': nil, 'message': 'E-mail no existe','state': false}
				render json: respuesta				
			end		  	  		
		end  	  			  

	end	
end
