class EstantesController < ApplicationController

	def index
		@estantes = Estante.all
	end

	def show
		@estante = Estante.find(params[:id])
	end

	def new
		@estante = Estante.new
	end

	def create
		@estante = Estante.create(estante_params)
		
		redirect_to @estante
	end

	def destroy
		@estante = Estante.find(params[:id])
		@estante.destroy

		redirect_to action: :index
	end

	private
		def estante_params
			params.require(:estante).permit(:numero)
		end
end