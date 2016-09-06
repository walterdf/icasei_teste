class ContatoController < ApplicationController
	def Index
		
	end

	def create 
		contato = Contato.new
		contato.nome = params[:nome]
		contato.email = params[:email]
		contato.mensagem = params[:mensagem]

		render :json=> { :saveReg => contato.save}, :status => 200
	end
end