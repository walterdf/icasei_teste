class RelatorioController < ApplicationController
	def index
		@access = Logacesso.getLastLog(50)
	end
end