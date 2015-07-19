class PrateleirasController < ApplicationController

	def index
		@prateleiras = Prateleira.all
	end

	def show
		@prateleira = Prateleira.find(params[:id])
	end

	def new
		@prateleira = Prateleira.new
	end

	def create
		@prateleira = Prateleira.create(prateleira_params)

		redirect_to @prateleira
	end

	def destroy
		@prateleira = Prateleira.find(params[:id])
		@prateleira.destroy

		redirect_to action: :index
	end

	private
		def prateleira_params
			params.require(:prateleira).permit(:letra)
		end
end