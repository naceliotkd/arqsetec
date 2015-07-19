class CaixasController < ApplicationController

	def index
		@caixas = Caixa.all
	end

	def show
		@caixa = Caixa.find(params[:id])
	end

	def new
		@caixa = Caixa.new
	end

	def create
		@caixa = Caixa.create(caixa_params)

		redirect_to @caixa
	end

	def destroy
		@caixa = Caixa.find(params[:id])
		@caixa.destroy

		redirect_to action: :index
	end

	private
		def caixa_params
			params.require(:caixa).permit(:numero)
		end
end