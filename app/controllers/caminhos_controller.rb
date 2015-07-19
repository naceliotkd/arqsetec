class CaminhosController < ApplicationController

	def index
		@caminhos = Caminho.all.order(:rua_id, :estante_id, :prateleira_id, :caixa_id)
	end

	def new
		@caminho = Caminho.new
		@ruas = Rua.all
		@estantes = Estante.all
		@prateleiras = Prateleira.all
		@caixas = Caixa.all
	end

	def edit
		@caminho = Caminho.find(params[:id])
		@ruas = Rua.all
		@estantes = Estante.all
		@prateleiras = Prateleira.all
		@caixas = Caixa.all
	end

	def create
		@caminho = Caminho.create(caminho_params)

		redirect_to action: :index
	end

	def update
		@caminho = Caminho.find(params[:id])
		@caminho.update(caminho_params)

		redirect_to action: :index
	end

	def destroy
		Caminho.find(params[:id]).destroy
	end

	private
		def caminho_params
			params.require(:caminho).permit(:rua_id, :estante_id, :prateleira_id, :caixa_id, :conteudo)
		end
end