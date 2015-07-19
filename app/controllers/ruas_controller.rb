class RuasController < ApplicationController

	def index
		@ruas = Rua.all
	end

	def show
		@rua = Rua.find(params[:id])
	end

	def new
		@rua = Rua.new
	end

	def create
		@rua = Rua.create(rua_params)

		redirect_to @rua
	end

	def destroy
		@rua = Rua.find(params[:id])
		@rua.destroy

		redirect_to action: :index
	end

	private
		def rua_params
			params.require(:rua).permit(:numero)
		end
end